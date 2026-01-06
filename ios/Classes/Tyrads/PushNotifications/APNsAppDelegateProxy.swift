//
//  APNsAppDelegateProxy.swift
//  Pods
//
//  Created by Acmo Network on 13/12/25.
//

import UIKit
import UserNotifications

@objc public final class APNsAppDelegateProxy: NSObject {

  /// Must be called from AppDelegate.didFinishLaunching
  @objc public static func configure() {
    UNUserNotificationCenter.current().delegate =
      APNsNotificationReceiver.shared
  }

  /// Forward APNs token from AppDelegate
  @objc public static func didRegisterForRemoteNotifications(
    _ deviceToken: Data
  ) {
    APNsNotificationManager.shared.onTokenReceived(deviceToken)
  }

  /// Forward silent / background push from AppDelegate
  @objc public static func didReceiveRemoteNotification(
    _ userInfo: [AnyHashable: Any],
    completionHandler: @escaping (UIBackgroundFetchResult) -> Void
  ) {
    APNsNotificationReceiver.shared
      .handleSilentNotification(userInfo: userInfo)

    completionHandler(.newData)
  }
}

