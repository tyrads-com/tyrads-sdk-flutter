//
//  AcmoDeviceDetails.swift
//  Pods
//
//  Created by Basharat Mehdi on 27/01/26.
//

import UIKit
import Foundation
import Network
import CoreTelephony

public class AcmoDeviceDetailsProvider {
    
    public static func getDeviceDetails() -> [String: Any] {
        var fd = [String: Any]()
        
        let device = UIDevice.current
        let bundle = Bundle.main
        let locale = Locale.current
        
        // device basic info
        fd["deviceId"] = device.identifierForVendor?.uuidString ?? "Unknown"
        fd["device"] = device.model.lowercased().contains("ipad") ? "iPad" : "iPhone"
        fd["deviceName"] = device.name
        fd["brand"] = "Apple"
        fd["model"] = device.model
        fd["baseOs"] = device.systemName
        fd["releaseVersion"] = device.systemVersion
        fd["modelName"] = getModelName()
        fd["hardware"] = deviceIdentifier()
        
        fd["product"] = "Darwin"
        fd["platform"] = "iOS"
        
        // app info
        fd["version"] = bundle.infoDictionary?["CFBundleShortVersionString"] as? String ?? "Unknown"
        fd["build"] = bundle.infoDictionary?["CFBundleVersion"] as? String ?? "Unknown"
        fd["package"] = bundle.bundleIdentifier ?? "Unknown"
        fd["installerStore"] = "App Store"
        
        fd["osLang"] = locale.languageCode ?? "en"
        
        // security and virtual check
        fd["rooted"] = isJailBroken()
        fd["virtual"] = isRunningOnSimulator()
        
        // storage info
        let (totalSpace, freeSpace) = getDiskSpace()
        fd["totalDiskSpace"] = String(format: "%.2f", Double(totalSpace) / 1_000_000_000)
        
        // network info
        fd["connectionType"] = getNetworkType()
        
        return fd
    }
    
    public static func getUptimeMetrics() -> [String: Any] {
        let uptime = ProcessInfo.processInfo.systemUptime
        let bootTimeDate = Date(timeIntervalSinceNow: -uptime)
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        return [
            "device_uptime_hours": String(format: "%.2f", uptime / 3600),
            "device_boot_time": formatter.string(from: bootTimeDate)
        ]
    }
    
    public static func getNetworkType() -> String {
        let monitor = NWPathMonitor()
        let semaphore = DispatchSemaphore(value: 0)
        var networkType = "No Connection"
        
        monitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                if path.usesInterfaceType(.wifi) {
                    networkType = "WiFi"
                } else if path.usesInterfaceType(.cellular) {
                    networkType = getCellularType()
                } else if path.usesInterfaceType(.wiredEthernet) {
                    networkType = "Ethernet"
                } else {
                    networkType = "Connected"
                }
            } else {
                networkType = "No Connection"
            }
            semaphore.signal()
        }
        
        let queue = DispatchQueue(label: "NetworkMonitor")
        monitor.start(queue: queue)
        
        _ = semaphore.wait(timeout: .now() + 0.1)
        monitor.cancel()
        
        return networkType
    }
    
    private static func getCellularType() -> String {
        let networkInfo = CTTelephonyNetworkInfo()
        var carrierType = "Cellular"
        
        if #available(iOS 14.1, *) {
            if let radioTechnologies = networkInfo.serviceCurrentRadioAccessTechnology {
                for (_, technology) in radioTechnologies {
                    switch technology {
                    case CTRadioAccessTechnologyGPRS, CTRadioAccessTechnologyEdge, CTRadioAccessTechnologyCDMA1x:
                        carrierType = "2G"
                    case CTRadioAccessTechnologyWCDMA, CTRadioAccessTechnologyHSDPA, CTRadioAccessTechnologyHSUPA, CTRadioAccessTechnologyCDMAEVDORev0, CTRadioAccessTechnologyCDMAEVDORevA, CTRadioAccessTechnologyCDMAEVDORevB, CTRadioAccessTechnologyeHRPD:
                        carrierType = "3G"
                    case CTRadioAccessTechnologyLTE:
                        carrierType = "4G"
                    case CTRadioAccessTechnologyNRNSA, CTRadioAccessTechnologyNR:
                        carrierType = "5G"
                    default:
                        carrierType = "Cellular"
                    }
                }
            }
        } else {
            let technology = networkInfo.currentRadioAccessTechnology
            switch technology {
            case CTRadioAccessTechnologyGPRS, CTRadioAccessTechnologyEdge, CTRadioAccessTechnologyCDMA1x:
                carrierType = "2G"
            case CTRadioAccessTechnologyWCDMA, CTRadioAccessTechnologyHSDPA, CTRadioAccessTechnologyHSUPA, CTRadioAccessTechnologyCDMAEVDORev0, CTRadioAccessTechnologyCDMAEVDORevA, CTRadioAccessTechnologyCDMAEVDORevB, CTRadioAccessTechnologyeHRPD:
                carrierType = "3G"
            case CTRadioAccessTechnologyLTE:
                carrierType = "4G"
            default:
                carrierType = "Cellular"
            }
        }
        return carrierType
    }
    
    public static func isRunningOnSimulator() -> Bool {
        return ProcessInfo().environment["SIMULATOR_DEVICE_NAME"] != nil
    }
    
    public static func getDiskSpace() -> (total: Int64, free: Int64) {
        var total: Int64 = 0
        var free: Int64 = 0
        do {
            let attrs = try FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory())
            total = attrs[.systemSize] as? Int64 ?? 0
            free = attrs[.systemFreeSize] as? Int64 ?? 0
        } catch {
        }
        return (total, free)
    }
    
    public static func isJailBroken() -> Bool {
#if targetEnvironment(simulator)
        return false
#else
        let paths = [
            "/Applications/Cydia.app",
            "/Library/MobileSubstrate/MobileSubstrate.dylib",
            "/bin/bash",
            "/usr/sbin/sshd",
            "/etc/apt",
            "/private/var/lib/apt/"
        ]
        for path in paths {
            if FileManager.default.fileExists(atPath: path) {
                return true
            }
        }
        return false
#endif
    }
    
    public static func deviceIdentifier() -> String {
#if targetEnvironment(simulator)
        if let simIdentifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] {
            return simIdentifier
        }
        return "Simulator"
#else
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
#endif
    }
    
    public static func getModelName() -> String {
        let identifier = deviceIdentifier()
        
        let iphoneModelMapping: [String: String] = [
            "iPhone1,1": "iPhone",
            "iPhone1,2": "iPhone 3G",
            "iPhone2,1": "iPhone 3GS",
            "iPhone3,1": "iPhone 4",
            "iPhone3,2": "iPhone 4 GSM Rev A",
            "iPhone3,3": "iPhone 4 CDMA",
            "iPhone4,1": "iPhone 4S",
            "iPhone5,1": "iPhone 5 (GSM)",
            "iPhone5,2": "iPhone 5 (GSM+CDMA)",
            "iPhone5,3": "iPhone 5C (GSM)",
            "iPhone5,4": "iPhone 5C (Global)",
            "iPhone6,1": "iPhone 5S (GSM)",
            "iPhone6,2": "iPhone 5S (Global)",
            "iPhone7,1": "iPhone 6 Plus",
            "iPhone7,2": "iPhone 6",
            "iPhone8,1": "iPhone 6s",
            "iPhone8,2": "iPhone 6s Plus",
            "iPhone8,4": "iPhone SE (1st Gen)",
            "iPhone9,1": "iPhone 7",
            "iPhone9,2": "iPhone 7 Plus",
            "iPhone9,3": "iPhone 7",
            "iPhone9,4": "iPhone 7 Plus",
            "iPhone10,1": "iPhone 8",
            "iPhone10,2": "iPhone 8 Plus",
            "iPhone10,3": "iPhone X Global",
            "iPhone10,4": "iPhone 8",
            "iPhone10,5": "iPhone 8 Plus",
            "iPhone10,6": "iPhone X GSM",
            "iPhone11,2": "iPhone XS",
            "iPhone11,4": "iPhone XS Max",
            "iPhone11,6": "iPhone XS Max Global",
            "iPhone11,8": "iPhone XR",
            "iPhone12,1": "iPhone 11",
            "iPhone12,3": "iPhone 11 Pro",
            "iPhone12,5": "iPhone 11 Pro Max",
            "iPhone12,8": "iPhone SE (2nd Gen)",
            "iPhone13,1": "iPhone 12 Mini",
            "iPhone13,2": "iPhone 12",
            "iPhone13,3": "iPhone 12 Pro",
            "iPhone13,4": "iPhone 12 Pro Max",
            "iPhone14,2": "iPhone 13 Pro",
            "iPhone14,3": "iPhone 13 Pro Max",
            "iPhone14,4": "iPhone 13 Mini",
            "iPhone14,5": "iPhone 13",
            "iPhone14,6": "iPhone SE (3rd Gen)",
            "iPhone14,7": "iPhone 14",
            "iPhone14,8": "iPhone 14 Plus",
            "iPhone15,2": "iPhone 14 Pro",
            "iPhone15,3": "iPhone 14 Pro Max",
            "iPhone15,4": "iPhone 15",
            "iPhone15,5": "iPhone 15 Plus",
            "iPhone16,1": "iPhone 15 Pro",
            "iPhone16,2": "iPhone 15 Pro Max",
            "iPhone17,1": "iPhone 16 Pro",
            "iPhone17,2": "iPhone 16 Pro Max",
            "iPhone17,3": "iPhone 16",
            "iPhone17,4": "iPhone 16 Plus",
            "iPhone17,5": "iPhone 16e",
            "iPhone18,1": "iPhone 17 Pro",
            "iPhone18,2": "iPhone 17 Pro Max",
            "iPhone18,3": "iPhone 17",
            "iPhone18,4": "iPhone Air"
        ]
        return iphoneModelMapping[identifier] ?? identifier
    }
    
    public static func isVpnActive() -> Bool {
        if let settings = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [AnyHashable: Any],
           let scopes = settings["__SCOPES__"] as? [AnyHashable: Any] {
            for (key, _) in scopes {
                if let keyString = key as? String,
                   (keyString.contains("tap") ||
                    keyString.contains("tun") ||
                    keyString.contains("ppp") ||
                    keyString.contains("ipsec") ||
                    keyString.contains("utun")) {
                    return true
                }
            }
        }
        return false
    }
}
