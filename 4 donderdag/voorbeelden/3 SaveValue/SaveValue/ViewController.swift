//
//  ViewController.swift
//  SaveValue
//
//  Created by Raymond van Dongelen on 18-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textToSave: UITextField!
    @IBAction func bewaar(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setValue(textToSave.text, forKey: "veld")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        println (NSUserDefaults.standardUserDefaults().valueForKey("veld"))
        textToSave.text = NSUserDefaults.standardUserDefaults().stringForKey("veld")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

