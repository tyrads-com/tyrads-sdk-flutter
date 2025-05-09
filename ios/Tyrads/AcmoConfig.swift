//
//  AcmoConfig.swift
//  TyradsSdk
//
//  Created by ibnShamas on 8/13/24.
//

import Foundation
import UIKit

struct AcmoConfig {
    static let API_VERSION = "2.0"
    static let BUILD_VERSION = "1"
    static let ACMO_VERSION = "3"
    static let SDK_VERSION = "\(API_VERSION).\(BUILD_VERSION)"
    static let SDK_PLATFORM = "React Native"
    static let BASE_URL = "https://api.tyrads.com/v\(API_VERSION)/"
    static let TAG = "TyrAds SDK"

    static let PRIMARY_COLOR = UIColor(red: 0/255, green: 36/255, blue: 51/255, alpha: 1)
    static let PRIMARY_COLOR_LIGHT = UIColor(red: 153/255, green: 145/255, blue: 145/255, alpha: 1)
    static let PRIMARY_COLOR_DARK = UIColor.black

    static let SECONDARY_COLOR = UIColor(red: 44/255, green: 179/255, blue: 136/255, alpha: 1)
    static let SECONDARY_COLOR_LIGHT = UIColor(red: 203/255, green: 235/255, blue: 207/255, alpha: 1)
    static let SIDEBAR_BACKGROUND_COLOR_LIGHT = UIColor(white: 1, alpha: 0.54)
    static let SIDEBAR_BACKGROUND_COLOR_DARK = UIColor(red: 17/255, green: 45/255, blue: 30/255, alpha: 1)
    static let APPBAR_BG = UIColor(red: 0/255, green: 33/255, blue: 48/255, alpha: 1)

    // Note: ThemeMode.light doesn't have a direct equivalent in iOS
    // You would typically handle this in your app's theme configuration
}
