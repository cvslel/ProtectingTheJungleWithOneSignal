//
//  AppDelegate.swift
//  OneSignalServiceNotification
//
//  Created by Cenker Soyak on 16.10.2023.
//

import UIKit
import OneSignalFramework

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            window = UIWindow()
        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()
        OneSignal.Debug.setLogLevel(.LL_VERBOSE)
         
         // OneSignal initialization
         OneSignal.initialize("9c1d8879-012a-4da9-8bca-f8a92cd26a5a", withLaunchOptions: launchOptions)
         
         // requestPermission will show the native iOS notification permission prompt.
         // We recommend removing the following code and instead using an In-App Message to prompt for notification permission
         OneSignal.Notifications.requestPermission({ accepted in
           print("User accepted notifications: \(accepted)")
         }, fallbackToSettings: true)
         
         // Login your customer with externalId
         // OneSignal.login("EXTERNAL_ID")
        return true
    }

    // MARK: UISceneSession Lifecycle

   
}

