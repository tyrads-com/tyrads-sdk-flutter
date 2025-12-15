//
//  APNsNotificationListener.swift
//  Pods
//
//  Created by Basharat Mehdi on 13/12/25.
//

import Foundation

public protocol APNsNotificationListener {
    func onNotificationReceived(userInfo: [AnyHashable: Any])
    func onNotificationClicked(identifier: String, userInfo: [AnyHashable: Any])
    func onNotificationDismissed(identifier: String)
}
