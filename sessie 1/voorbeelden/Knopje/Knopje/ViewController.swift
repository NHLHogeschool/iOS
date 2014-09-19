//
//  ViewController.swift
//  Knopje
//
//  Created by Raymond van Dongelen on 12-09-14.
//  Copyright (c) 2014 NHL Hogeschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mijnLabel: UILabel!

    @IBAction func knopGedrukt(sender: AnyObject) {
        mijnLabel.text = "Hallo"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

