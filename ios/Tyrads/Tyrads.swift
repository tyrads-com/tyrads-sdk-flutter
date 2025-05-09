import Foundation
import UIKit
import AppTrackingTransparency
import AdSupport
import WebKit



/// The TyradsSdk class provides methods for configuring the SDK and displaying offers.
public class Tyrads : NSObject {
    /// Shared instance of the TyradsSdk.
    public static let instance = Tyrads()

    private var apiKey: String = ""
    private var apiSecret: String = ""
    private var publisherUserID: String = ""
    private var currentLanguage: String = "en"
    private var newUser: Bool = false
    private var loginData: AcmoInitModel?
    var initializationWait = DispatchSemaphore(value: 0)
    private var debugMode: Bool = false

    private func log(_ message: String) {
        if debugMode {
            NSLog(message)
        }
    }

    /// Configures the Tyrads SDK with the provided API key and secret key.
    ///
    /// - Parameters:
    ///   - apiKey: The API key provided by Tyrads.
    ///   - secretKey: The secret key provided by Tyrads.
    @objc public func configure( apiKey: String, secretKey: String, debugMode: Bool = false) {
        self.apiKey = apiKey
        self.apiSecret = secretKey
        self.debugMode = debugMode
        self.currentLanguage = Locale.current.languageCode ?? ""
    }

    /// Logs in the user with the provided user ID or retrieves the user ID from UserDefaults.
    ///
    /// - Parameter userID: Optional. The user ID to log in with. If nil, the SDK will attempt to retrieve the user ID from UserDefaults.
    public func loginUser(_ userID: String? = nil, completion: @escaping (ApiHeaders?) -> Void) {
        let userId = userID ?? UserDefaults.standard.string(forKey: "acmo-tyrads-sdk-user-id") ?? ""

        let identifierType = "IDFA"
        var advertisingId = ""

        func finalizeLogin() {
            let fd: [String: Any] = [
                "publisherUserId": userId,
                "platform": "iOS",
                "identifierType": identifierType,
                "identifier": advertisingId
            ]

            self.log("Initializing with data: \(fd)")

            guard let url = URL(string: AcmoConfig.BASE_URL + "initialize") else {
                self.log("Failed to create URL")
                completion(nil)
                return
            }

            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue(AcmoConfig.SDK_PLATFORM, forHTTPHeaderField: "X-SDK-Platform")
            request.setValue(AcmoConfig.SDK_VERSION, forHTTPHeaderField: "X-SDK-Version")
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.setValue(self.apiKey, forHTTPHeaderField: "X-API-Key")
            request.setValue(self.apiSecret, forHTTPHeaderField: "X-API-Secret")

            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: fd)
            } catch {
                self.log("Failed to serialize request body: \(error)")
                completion(nil)
                return
            }

            let task = URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    self.log("Network request failed: \(error)")
                    completion(nil)
                    return
                }

                guard let data = data else {
                    self.log("No data received from the server")
                    completion(nil)
                    return
                }

                if let responseString = String(data: data, encoding: .utf8) {
                    self.log("Received response: \(responseString)")

                    guard let jsonData = responseString.data(using: .utf8),
                          let acmoInitModel = try? JSONDecoder().decode(AcmoInitModel.self, from: jsonData) else {
                        self.log("Failed to decode response")
                        completion(nil)
                        return
                    }

                    self.loginData = acmoInitModel
                    self.publisherUserID = acmoInitModel.data.user.publisherUserId
                    self.newUser = acmoInitModel.data.newRegisteredUser
                    self.log("Login successful. Publisher User ID: \(self.publisherUserID), New User: \(self.newUser)")
                    self.initializationWait.signal()

                    // Build ApiHeaders object
                    let headers = ApiHeaders(
                        xApiKey: self.apiKey,
                        xApiSecret: self.apiSecret,
                        xUserId: self.publisherUserID,
                        xSdkPlatform: AcmoConfig.SDK_PLATFORM,
                        xSdkVersion: AcmoConfig.SDK_VERSION,
                        userAgent: UIDevice.current.systemName + "/" + UIDevice.current.systemVersion,
                        languageCode: Locale.current.languageCode ?? "en",
                        premiumColor: acmoInitModel.data.publisherApp.premiumColor,
                        headerColor: acmoInitModel.data.publisherApp.headerColor,
                        mainColor: acmoInitModel.data.publisherApp.mainColor
                    )

                    completion(headers)
                }
            }

            task.resume()
            self.log("Network request started")
        }

        if #available(iOS 14, *) {
            self.log("Requesting tracking authorization for iOS 14+")
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                    advertisingId = ASIdentifierManager.shared().advertisingIdentifier.uuidString
                    self.log("Tracking authorized. Advertising ID: \(advertisingId)")
                case .denied, .restricted, .notDetermined:
                    advertisingId = ""
                    self.log("Tracking not authorized or restricted")
                @unknown default:
                    self.log("Unknown tracking status")
                }
                finalizeLogin()
            }
        } else {
            advertisingId = ASIdentifierManager.shared().advertisingIdentifier.uuidString
            self.log("iOS version < 14. Advertising ID: \(advertisingId)")
            finalizeLogin()
        }
    }




     public func showOffers(_ launchMode: Int = 3, route: String? = nil, campaignID: Int? = nil) {
        self.initializationWait.wait()
        var campaignIDString: String = "0"
        if let campaignIDValue = campaignID {
            campaignIDString = String(campaignIDValue)
        }
       let urlString =
       "https://websdk.tyrads.com/?apiKey=\(Tyrads.instance.apiKey)&apiSecret=\(Tyrads.instance.apiSecret)&userID=\(Tyrads.instance.publisherUserID)&newUser=\(Tyrads.instance.newUser)&platform=\(AcmoConfig.SDK_PLATFORM)&hc=\(Tyrads.instance.loginData?.data.publisherApp.headerColor ?? "")&mc=\(Tyrads.instance.loginData?.data.publisherApp.mainColor ?? "")&launchMode=\(launchMode)&route=\(route ?? "")&campaignID=\(campaignIDString)&lang=\(Tyrads.instance.currentLanguage)&av=\(AcmoConfig.ACMO_VERSION)"

        do {
            guard let url = URL(string: urlString) else {
                throw NSError(domain: "TyradsSdk", code: 1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"])
            }

            switch launchMode {
            case 1, 2:
                DispatchQueue.main.async {
                    let config = WKWebViewConfiguration()
                    let userContentController = WKUserContentController()
                    
                    userContentController.add(self, name: "clickHandler")
                    config.userContentController = userContentController
                    
                    let webView = WKWebView(frame: UIScreen.main.bounds, configuration: config)
                    webView.navigationDelegate = self
                    
                    if #available(iOS 16.4, *) {
                        webView.isInspectable = true
                    }
                    
                    let viewController = UIViewController()
                    viewController.view = webView
                    viewController.modalPresentationStyle = .fullScreen
                    
                    webView.load(URLRequest(url: url))
                    
                    if let rootViewController = UIApplication.shared.windows.first?.rootViewController {
                        rootViewController.present(viewController, animated: true, completion: nil)
                    }
                }
            case 3:
                DispatchQueue.main.async {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            default:
                DispatchQueue.main.async {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            }
        } catch {
            print("An error occurred: \(error)")
        }
    }
}


extension Tyrads: WKScriptMessageHandler {
    public func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        guard message.name == "clickHandler",
              let messageDict = message.body as? [String: Any] else {
            return
        }
        print("Message data: \(messageDict)")
        
        if let action = messageDict["action"] as? String {
            switch action {
            case "closeWebview":
                DispatchQueue.main.async {
                    UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true)
                }
                
            case "changeLanguage":
                if let langCode = messageDict["languageCode"] as? String {
                    // Handle language change
                    self.currentLanguage = langCode
                    // Notify any observers if needed
                }
                
            default:
                print("Unknown command: \(action)")
            }
        }
    }
}

extension Tyrads: WKNavigationDelegate {
    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        let js = """
        window.addEventListener('message', (event) => {
            try {
                const message = typeof event.data === 'string' 
                                ? JSON.parse(event.data) 
                                : event.data;
                if (message && message.command === 'webview_command') {
                    window.webkit.messageHandlers.clickHandler.postMessage({
                        command: message.command,
                        action: message.action,
                        languageCode: message.languageCode
                    });
                }
            } catch (error) {
                console.log('Message handling error:', error);
            }
        });
        """
        
        webView.evaluateJavaScript(js) { _, error in
            if let error = error {
                print("JavaScript injection failed: \(error)")
            }
        }
    }
}
