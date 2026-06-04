//
//  APNsNotificationManager.swift
//  Pods
//
//  Created by Basharat Mehdi on 13/12/25.
//

import UIKit
import UserNotifications

public final class APNsNotificationManager {

    public static let shared = APNsNotificationManager()
    private init() {}

    private var token: String?
    private var tokenCallbacks: [(String) -> Void] = []
    
    private let storageKey: String = "tyrads-apn-token"

    public func requestPermission(completion: @escaping (Bool) -> Void) {
        UNUserNotificationCenter.current()
            .requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
                DispatchQueue.main.async {
                    if granted {
                        UIApplication.shared.registerForRemoteNotifications()
                    }
                    completion(granted)
                }
            }
    }

    public func hasPermission(completion: @escaping (Bool) -> Void) {
        UNUserNotificationCenter.current().getNotificationSettings {
            completion($0.authorizationStatus == .authorized)
        }
    }

    public func onTokenReceived(_ deviceToken: Data) {
        let hex = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        token = hex
        UserDefaults.standard.set(hex, forKey: storageKey)

        tokenCallbacks.forEach { $0(hex) }
        tokenCallbacks.removeAll()
    }

    public func getToken(completion: @escaping (String?) -> Void) {
        if let token = token {
            completion(token)
            return
        }

        if let stored = UserDefaults.standard.string(forKey: storageKey) {
            token = stored
            completion(stored)
            return
        }

        tokenCallbacks.append { completion($0) }
        UIApplication.shared.registerForRemoteNotifications()
    }

    public func clearAllNotifications() {
        APNsNotificationReceiver.shared.clearAll()
    }
}
