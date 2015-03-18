//
//  AppDelegate.swift
//  TableDemo
//
//  Created by Raymond van Dongelen on 10-11-14.
//  Copyright (c) 2014 Vooruit met. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow (frame: UIScreen.mainScreen().bounds)
        
        let tableView = DemoTable()
        
        let navigationController = UINavigationController(rootViewController:tableView)

        
        println(tableView.title)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        
        return true
    }



}

