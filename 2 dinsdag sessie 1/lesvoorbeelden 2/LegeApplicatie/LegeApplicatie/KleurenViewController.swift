//
//  KleurenViewController.swift
//  LegeApplicatie
//
//  Created by Raymond van Dongelen on 17-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import UIKit

class KleurenViewController : UIViewController {
    override func viewWillAppear(animated: Bool) {
        self.view.backgroundColor = UIColor.redColor()
        
        self.tabBarItem.badgeValue = "100"
        self.tabBarItem.image = UIImage (named: "like")
    }
}
