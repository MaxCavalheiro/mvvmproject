//
//  AppDelegate.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 6/29/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private var applicationCoordinator: ApplicationCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        testAllResourcesAvaliable()
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let applicationCoordinator = ApplicationCoordinator(window: window)
        
        self.window = window
        self.applicationCoordinator = applicationCoordinator
        
        applicationCoordinator.start()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) { }

    func applicationDidEnterBackground(_ application: UIApplication) { }

    func applicationWillEnterForeground(_ application: UIApplication) { }

    func applicationDidBecomeActive(_ application: UIApplication) { }

    func applicationWillTerminate(_ application: UIApplication) { }
    
    func testAllResourcesAvaliable() {
        do {
            try R.validate()
        } catch {
            print("Resources missing: \(error)")
        }
    }

}

