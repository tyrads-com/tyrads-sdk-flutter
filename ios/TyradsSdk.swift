import Foundation
import UIKit


@objc(TyradsSdk)
class TyradsSdk: NSObject {

  @objc
  func `init`(_ apiKey: String, secretKey: String) {
    NSLog("TyradsModule: init called with apiKey: \(apiKey) and secretKey: \(secretKey)")
    Tyrads.instance.configure(apiKey: apiKey, secretKey: secretKey)
  }

  @objc
  func loginUser(_ userId: String, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) {
    NSLog("TyradsModule: loginUser called with userId: \(userId)")
    Tyrads.instance.loginUser(userId) { apiHeaders in
      guard let headers = apiHeaders else {
        reject("LOGIN_ERROR", "Login failed or returned nil headers", nil)
        return
      }

      // Convert ApiHeaders to Dictionary
      let result: [String: Any] = [
        "xApiKey": headers.xApiKey,
        "xApiSecret": headers.xApiSecret,
        "xUserId": headers.xUserId,
        "xSdkPlatform": headers.xSdkPlatform ?? "",
        "xSdkVersion": headers.xSdkVersion ?? "",
        "userAgent": headers.userAgent,
        "languageCode": headers.languageCode,
        "premiumColor": headers.premiumColor,
        "headerColor": headers.headerColor,
        "mainColor": headers.mainColor
      ]

      resolve(result)
    }
  }


@objc func showOffers(_ launchMode: Int = 3, route: String? = nil, campaignID: Int = 0) {
    NSLog("TyradsModule: showOffers called")
    Tyrads.instance.showOffers(launchMode, route: route, campaignID:  campaignID == 0 ? nil : campaignID )
}

}
