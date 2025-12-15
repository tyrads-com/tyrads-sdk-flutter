//
//  APNsAppDelegateProxy.swift
//  Pods
//
//  Created by Acmo Network on 13/12/25.
//

import UIKit

@objc public final class APNsAppDelegateProxy: NSObject {

    // Token (first launch guaranteed)
    @objc public static func didRegisterForRemoteNotifications(
        deviceToken: Data
    ) {
        APNsNotificationManager.shared.onTokenReceived(deviceToken)
    }

    // Silent / background push
    @objc public static func didReceiveRemoteNotification(
        userInfo: [AnyHashable: Any],
        completionHandler: @escaping (UIBackgroundFetchResult) -> Void
    ) {
        APNsNotificationReceiver.shared
            .handleSilentNotification(userInfo: userInfo)

        completionHandler(.newData)
    }
}
