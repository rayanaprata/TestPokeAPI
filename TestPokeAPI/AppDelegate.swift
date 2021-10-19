//
//  AppDelegate.swift
//  TestPokeAPI
//
//  Created by Rayana Prata Neves on 18/10/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

//    var window: UIWindow?
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//
//        window = UIWindow(frame: UIScreen.main.bounds)
//        window?.rootViewController = InitialViewController()
//        window?.makeKeyAndVisible()
//
//        return true
//    }
    
    var window: UIWindow?
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

            setupRootViewController()
            
            return true
        }
        
        private func setupRootViewController() {
            let viewController: UIViewController = InitialViewController()
            let navigationController = UINavigationController(rootViewController: viewController)
            
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
        }

}
