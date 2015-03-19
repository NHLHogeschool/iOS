//
//  ViewController.swift
//  SequeTest
//
//  Created by Raymond van Dongelen on 16-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        println ("prep for seque")
        
        if let dest = segue.destinationViewController as? DestinationViewController {
            
            dest.vetteData = "Hoi"
        }
    }
    
    override func performSegueWithIdentifier(identifier: String?, sender: AnyObject?) {
        
        println ("Going to seque")
        
    }


}

