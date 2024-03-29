//
//  AppDelegate.swift
//  FinalProject
//
//  Created by Dong Duong V. on 7/15/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let onboadVC = OnboardingViewController()
        window?.rootViewController = UINavigationController(rootViewController: onboadVC)
        window?.makeKeyAndVisible()
        return true
    }
}
