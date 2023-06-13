//
//  AppDelegate.swift
//  HelloAutoHideKeyboard2
//
//  Created by MacBook Pro on 6/13/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() {
            let nav = UINavigationController(rootViewController: vc)
            window.rootViewController = nav
        }
        self.window = window
        window.makeKeyAndVisible()
        return true
    }


}

