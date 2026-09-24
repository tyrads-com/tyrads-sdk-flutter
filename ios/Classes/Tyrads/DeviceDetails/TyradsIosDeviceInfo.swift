import UIKit
import Foundation

// Mirrors TyradsSDKIOS's TyradsDeviceInfoProvider so the Flutter SDK reports the
// same iOS deviceData as the native Swift SDK. Keep both in sync when editing.
final class TyradsIosDeviceInfo {

    static func deviceDetails() -> [String: Any] {
        var fd: [String: Any] = [:]
        let device = UIDevice.current

        // Device identifiers
        let deviceType = device.userInterfaceIdiom == .pad ? "iPad" : "iPhone"
        fd["deviceId"] = device.identifierForVendor?.uuidString ?? ""
        fd["device"] = deviceType
        fd["deviceName"] = device.name
        fd["brand"] = "Apple"
        let identifier = getModelIdentifier()
        fd["model"] = deviceType
        fd["hardware"] = identifier
        fd["modelName"] = marketingNames[identifier] ?? device.model
        fd["product"] = "Darwin"
        fd["baseOs"] = device.systemName
        fd["releaseVersion"] = device.systemVersion

        // App info
        let appBundle = Bundle.main
        fd["build"] = appBundle.infoDictionary?["CFBundleVersion"] as? String ?? ""
        fd["version"] = appBundle.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
        fd["package"] = appBundle.bundleIdentifier ?? ""
        fd["platform"] = "iOS"
        fd["installerStore"] = getInstallerStore()
        // {lang}-{COUNTRY} (e.g. en-US, pt-BR) — preferredLanguages is already BCP-47
        // hyphenated, unlike Locale.current.languageCode which strips the region.
        fd["osLang"] = Locale.preferredLanguages.first ?? "en-US"

        // Security
        fd["rooted"] = isJailbroken()
        fd["virtual"] = isSimulator()

        // Memory
        fd["totalMemory"] = getTotalMemoryGB()

        return fd
    }

    // Maps hardware identifiers (e.g. "iPhone14,5") to marketing names (e.g. "iPhone 13").
    // Unknown identifiers fall back to UIDevice.model ("iPhone"/"iPad") in deviceDetails().
    private static let marketingNames: [String: String] = [
        // iPhone SE
        "iPhone8,4": "iPhone SE (1st generation)",
        "iPhone12,8": "iPhone SE (2nd generation)",
        "iPhone14,6": "iPhone SE (3rd generation)",
        // iPhone 7 / 8 / X
        "iPhone9,1": "iPhone 7", "iPhone9,3": "iPhone 7",
        "iPhone9,2": "iPhone 7 Plus", "iPhone9,4": "iPhone 7 Plus",
        "iPhone10,1": "iPhone 8", "iPhone10,4": "iPhone 8",
        "iPhone10,2": "iPhone 8 Plus", "iPhone10,5": "iPhone 8 Plus",
        "iPhone10,3": "iPhone X", "iPhone10,6": "iPhone X",
        // iPhone XS / XR
        "iPhone11,2": "iPhone XS",
        "iPhone11,4": "iPhone XS Max", "iPhone11,6": "iPhone XS Max",
        "iPhone11,8": "iPhone XR",
        // iPhone 11
        "iPhone12,1": "iPhone 11",
        "iPhone12,3": "iPhone 11 Pro",
        "iPhone12,5": "iPhone 11 Pro Max",
        // iPhone 12
        "iPhone13,1": "iPhone 12 mini",
        "iPhone13,2": "iPhone 12",
        "iPhone13,3": "iPhone 12 Pro",
        "iPhone13,4": "iPhone 12 Pro Max",
        // iPhone 13
        "iPhone14,4": "iPhone 13 mini",
        "iPhone14,5": "iPhone 13",
        "iPhone14,2": "iPhone 13 Pro",
        "iPhone14,3": "iPhone 13 Pro Max",
        // iPhone 14
        "iPhone14,7": "iPhone 14",
        "iPhone14,8": "iPhone 14 Plus",
        "iPhone15,2": "iPhone 14 Pro",
        "iPhone15,3": "iPhone 14 Pro Max",
        // iPhone 15
        "iPhone15,4": "iPhone 15",
        "iPhone15,5": "iPhone 15 Plus",
        "iPhone16,1": "iPhone 15 Pro",
        "iPhone16,2": "iPhone 15 Pro Max",
        // iPhone 16
        "iPhone17,3": "iPhone 16",
        "iPhone17,4": "iPhone 16 Plus",
        "iPhone17,1": "iPhone 16 Pro",
        "iPhone17,2": "iPhone 16 Pro Max",
        "iPhone17,5": "iPhone 16e",
        // iPad (recent)
        "iPad13,1": "iPad Air (4th generation)", "iPad13,2": "iPad Air (4th generation)",
        "iPad13,16": "iPad Air (5th generation)", "iPad13,17": "iPad Air (5th generation)",
        "iPad13,18": "iPad (10th generation)", "iPad13,19": "iPad (10th generation)",
        "iPad14,1": "iPad mini (6th generation)", "iPad14,2": "iPad mini (6th generation)",
        "iPad13,4": "iPad Pro 11-inch (5th generation)", "iPad13,5": "iPad Pro 11-inch (5th generation)",
        "iPad13,6": "iPad Pro 11-inch (5th generation)", "iPad13,7": "iPad Pro 11-inch (5th generation)",
        "iPad13,8": "iPad Pro 12.9-inch (5th generation)", "iPad13,9": "iPad Pro 12.9-inch (5th generation)",
        "iPad13,10": "iPad Pro 12.9-inch (5th generation)", "iPad13,11": "iPad Pro 12.9-inch (5th generation)",
        "iPad14,3": "iPad Pro 11-inch (4th generation)", "iPad14,4": "iPad Pro 11-inch (4th generation)",
        "iPad14,5": "iPad Pro 12.9-inch (6th generation)", "iPad14,6": "iPad Pro 12.9-inch (6th generation)",
    ]

    private static func getModelIdentifier() -> String {
        var systemInfo = utsname()
        uname(&systemInfo)
        return withUnsafePointer(to: &systemInfo.machine) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) {
                String(cString: $0)
            }
        }
    }

    private static func isJailbroken() -> Bool {
        #if targetEnvironment(simulator)
        return false
        #else
        let paths = [
            "/Applications/Cydia.app",
            "/Library/MobileSubstrate/MobileSubstrate.dylib",
            "/bin/bash",
            "/usr/sbin/sshd",
            "/etc/apt"
        ]
        return paths.contains { FileManager.default.fileExists(atPath: $0) }
        #endif
    }

    private static func isSimulator() -> Bool {
        #if targetEnvironment(simulator)
        return true
        #else
        return false
        #endif
    }

    private static func getInstallerStore() -> String {
        guard let receiptURL = Bundle.main.appStoreReceiptURL else { return "Unknown" }
        switch receiptURL.lastPathComponent {
        case "receipt":
            return "com.apple.appstore"
        case "sandboxReceipt":
            return FileManager.default.fileExists(atPath: receiptURL.path)
                ? "com.apple.testflight"
                : "com.apple.xcode"
        default:
            return "Unknown"
        }
    }

    private static func getTotalMemoryGB() -> String {
        let bytes = ProcessInfo.processInfo.physicalMemory
        let gb = Double(bytes) / 1_073_741_824.0
        return String(format: "%.2f", gb)
    }
}
