//
//  APNsNotificationReceiver.swift
//  Pods
//
//  Created by Basharat Mehdi on 13/12/25.
//

import UserNotifications
import UIKit

public final class APNsNotificationReceiver: NSObject, UNUserNotificationCenterDelegate {

    public static let shared = APNsNotificationReceiver()
    private var listener: APNsNotificationListener?

    private override init() {
        super.init()
    }

    public func setListener(_ listener: APNsNotificationListener?) {
        self.listener = listener
    }

    // Foreground
    public func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void
    ) {
        listener?.onNotificationReceived(
            userInfo: notification.request.content.userInfo
        )

        if #available(iOS 14.0, *) {
            completionHandler([.banner, .sound, .badge])
        } else {
            completionHandler([.alert, .sound, .badge])
        }
    }

    // Click / Dismiss
    public func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        didReceive response: UNNotificationResponse,
        withCompletionHandler completionHandler: @escaping () -> Void
    ) {
        let id = response.notification.request.identifier
        let info = response.notification.request.content.userInfo

        switch response.actionIdentifier {
        case UNNotificationDismissActionIdentifier:
            listener?.onNotificationDismissed(identifier: id)
        case UNNotificationDefaultActionIdentifier:
            listener?.onNotificationClicked(identifier: id, userInfo: info)
        default:
            break
        }

        completionHandler()
    }
    
    // Silent / background push
    public func handleSilentNotification(userInfo: [AnyHashable: Any]) {
        listener?.onNotificationReceived(userInfo: userInfo)
    }

    public func clearAll() {
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UIApplication.shared.applicationIconBadgeNumber = 0
    }

    public func clear(identifier: String) {
        UNUserNotificationCenter.current()
            .removeDeliveredNotifications(withIdentifiers: [identifier])
    }
}
