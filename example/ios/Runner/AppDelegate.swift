import UIKit
import Flutter
import tyrads_sdk

@main
@objc class AppDelegate: FlutterAppDelegate {

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    APNsAppDelegateProxy.configure()
    
    GeneratedPluginRegistrant.register(with: self)
    return super.application(
      application,
      didFinishLaunchingWithOptions: launchOptions
    )
  }

  override func application(
    _ application: UIApplication,
    didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
  ) {
    APNsAppDelegateProxy.didRegisterForRemoteNotifications(deviceToken)

    super.application(
      application,
      didRegisterForRemoteNotificationsWithDeviceToken: deviceToken
    )
  }

  override func application(
    _ application: UIApplication,
    didReceiveRemoteNotification userInfo: [AnyHashable : Any],
    fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void
  ) {

    APNsAppDelegateProxy.didReceiveRemoteNotification(
      userInfo,
      completionHandler: completionHandler
    )
    
    let wrappedCompletionHandler: (UIBackgroundFetchResult) -> Void = { result in
    }
    
    super.application(
      application,
      didReceiveRemoteNotification: userInfo,
      fetchCompletionHandler: wrappedCompletionHandler
    )
  }

}