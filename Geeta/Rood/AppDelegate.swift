//
//  AppDelegate.swift
//  Geeta
//
//  Created by ibrohim begaliev on 11/24/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.rootViewController = UINavigationController(rootViewController: MainVC(nibName: "MainVC", bundle: nil))
        window?.makeKeyAndVisible()
        
        return true
    }
    
}

