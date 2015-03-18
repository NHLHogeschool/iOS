//
//  ViewController.swift
//  Text
//
//  Created by Raymond van Dongelen on 17-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func textViewShouldBeginEditing(textView: UITextView) -> Bool {
//        println ("Gebruiker wil beginnen")
//        return true
//    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        
        println ("Nu echt begonnen")
    }



}

