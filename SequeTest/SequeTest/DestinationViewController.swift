//
//  DestinationViewController.swift
//  SequeTest
//
//  Created by Raymond van Dongelen on 16-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import UIKit

class DestinationViewController : UIViewController{
    var vetteData: String = ""

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        println ("Destination seque")
    }
    
    override func viewDidAppear(animated: Bool) {
        println(self.vetteData)
    }
}
