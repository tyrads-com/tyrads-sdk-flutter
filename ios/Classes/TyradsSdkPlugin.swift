//
//  TyradsSdkPlugin.swift
//  Pods
//
//  Created by Basharat Mehdi on 13/12/25.
//


import Flutter
import UIKit
import UserNotifications

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
        registrar.addApplicationDelegate(instance)
        
        pushEventChannel.setStreamHandler(instance)
        
        APNsNotificationReceiver.shared.setListener(instance)
        
        UNUserNotificationCenter.current().delegate = APNsNotificationReceiver.shared
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
    
    // MARK: - UIApplicationDelegate
    
    public func application(
        _ application: UIApplication,
        didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
    ) {
        APNsNotificationManager.shared.onTokenReceived(deviceToken)
    }
    
    public func application(
        _ application: UIApplication,
        didFailToRegisterForRemoteNotificationsWithError error: Error
    ) {
        print("Tyrads SDK: Failed to register for remote notifications: \(error)")
    }
    
    public func application(
        _ application: UIApplication,
        didReceiveRemoteNotification userInfo: [AnyHashable : Any],
        fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void
    ) -> Bool {
        APNsNotificationReceiver.shared.handleSilentNotification(userInfo: userInfo)
        completionHandler(.newData)
        return true
    }
}

