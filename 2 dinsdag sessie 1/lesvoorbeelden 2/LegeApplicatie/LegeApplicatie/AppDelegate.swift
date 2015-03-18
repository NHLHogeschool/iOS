//
//  AppDelegate.swift
//  LegeApplicatie
//
//  Created by Raymond van Dongelen on 17-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        println ("Hallo allemaal")
        window = UIWindow (frame: UIScreen.mainScreen().bounds)
        println ("Aantal aangesloten schermen \(UIScreen.screens().count)")
        
        
        let rood = KleurenViewController ()
        rood.title = "Rood"
        
        let blauw = UIViewController()
        blauw.title = "Blauw"
        blauw.view.backgroundColor = UIColor.blueColor()
        
        let split = UISplitViewController ()
        split.viewControllers = [rood, blauw]
        
        
        let tab = UITabBarController()
        tab.viewControllers = [rood, blauw]
        
        window?.rootViewController = tab
        window?.makeKeyAndVisible()
        
        return true
    }


}

