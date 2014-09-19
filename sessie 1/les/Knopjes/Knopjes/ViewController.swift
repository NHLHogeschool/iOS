//
//  ViewController.swift
//  Knopjes
//
//  Created by Raymond van Dongelen on 18-09-14.
//  Copyright (c) 2014 NHL Hogeschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tekstveld: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func veranderTekst(sender: AnyObject) {
        tekstveld.text = "Hallo"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

