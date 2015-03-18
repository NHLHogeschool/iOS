//
//  AppDelegate.swift
//  LegeApp
//
//  Created by Raymond van Dongelen on 26-09-14.
//  Copyright (c) 2014 NHL. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow (frame: UIScreen.mainScreen().bounds)
        
        let redController = UIViewController()
        let greenController = UIViewController()
        
        let tabController = UITabBarController()
        
        tabController.viewControllers = [redController, greenController]
        window!.rootViewController = tabController
        window!.makeKeyAndVisible()
        
        redController.view.backgroundColor = UIColor.redColor()
        redController.title = "red"
        greenController.view.backgroundColor = UIColor.greenColor()
        greenController.title = "green"

        return true
    }

}

