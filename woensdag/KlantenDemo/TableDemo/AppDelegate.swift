//
//  AppDelegate.swift
//  TableDemo
//
//  Created by Raymond van Dongelen on 18-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow (frame: UIScreen.mainScreen().bounds)
        
        let mooi = MooieTableViewController()
        
        let nav = UINavigationController(rootViewController: mooi)
        
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        
        
        
        return true
    }
}









