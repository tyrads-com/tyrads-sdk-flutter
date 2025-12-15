//
//  TyradsSdkPlugin.swift
//  Pods
//
//  Created by Basharat Mehdi on 13/12/25.
//


import Flutter
import UIKit

public final class TyradsSdkPlugin: NSObject,
                                    FlutterPlugin,
                                    FlutterStreamHandler,
                                    APNsNotificationListener {
    
    private static var pushEventSink: FlutterEventSink?
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        
        let methodChannel = FlutterMethodChannel(
            name: "tyrads_sdk",
            binaryMessenger: registrar.messenger()
        )
        
        let pushEventChannel = FlutterEventChannel(
            name: "tyrads_sdk/pushEvents",
            binaryMessenger: registrar.messenger()
        )
        
        let instance = TyradsSdkPlugin()
        
        registrar.addMethodCallDelegate(instance, channel: methodChannel)
        pushEventChannel.setStreamHandler(instance)
        
        APNsNotificationReceiver.shared.setListener(instance)
    }
    
    // Method calls
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        
        switch call.method {
        case "push/requestPermission":
            APNsNotificationManager.shared.requestPermission {
                result($0)
            }
        case "push/getApnsToken":
            APNsNotificationManager.shared.getToken {
                result($0)
            }
        default:
            result(FlutterMethodNotImplemented)
        }
    }
    
    // Event stream
    
    public func onListen(
        withArguments arguments: Any?,
        eventSink events: @escaping FlutterEventSink
    ) -> FlutterError? {
        TyradsSdkPlugin.pushEventSink = events
        return nil
    }
    
    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        TyradsSdkPlugin.pushEventSink = nil
        return nil
    }
    
    // APNs callbacks → Flutter
    
    public func onNotificationReceived(userInfo: [AnyHashable: Any]) {
        TyradsSdkPlugin.pushEventSink?([
            "type": "received",
            "data": userInfo
        ])
    }
    
    public func onNotificationClicked(identifier: String, userInfo: [AnyHashable: Any]) {
        TyradsSdkPlugin.pushEventSink?([
            "type": "clicked",
            "id": identifier,
            "data": userInfo
        ])
    }
    
    public func onNotificationDismissed(identifier: String) {
        TyradsSdkPlugin.pushEventSink?([
            "type": "dismissed",
            "id": identifier
        ])
    }
}

