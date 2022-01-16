//
//  AppDelegate.swift
//  MVVM_Practice
//
//  Created by mobile on 2022/01/12.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        let rootVC = UIStoryboard.init(name: "Main", bundle: nil)
            .instantiateViewController(withIdentifier: "OnePieceViewController") as! OnePieceViewController
        window.rootViewController = rootVC
        window.makeKeyAndVisible()
        
        return true
    }


}

