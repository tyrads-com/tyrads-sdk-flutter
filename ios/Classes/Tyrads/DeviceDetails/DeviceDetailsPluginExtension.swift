//
//  DeviceDetailsPluginExtension.swift
//  Pods
//
//  Created by Basharat Mehdi on 27/01/26.
//

import Flutter
import UIKit

extension TyradsSdkPlugin {
    
    func handleDeviceDetails(_ call: FlutterMethodCall, result: @escaping FlutterResult) -> Bool {
        switch call.method {
        case "getTrackingInfo":
            result(AcmoDeviceDetailsProvider.getDeviceDetails())
            return true
        case "getIosDeviceDetails":
            result(TyradsIosDeviceInfo.deviceDetails())
            return true
        case "getDeviceMetrics":
            result(AcmoDeviceDetailsProvider.getUptimeMetrics())
            return true
        case "getNetworkType":
            result(AcmoDeviceDetailsProvider.getNetworkType())
            return true
        case "checkVpnStatus":
            result(AcmoDeviceDetailsProvider.isVpnActive())
            return true
        default:
            return false
        }
    }
}
