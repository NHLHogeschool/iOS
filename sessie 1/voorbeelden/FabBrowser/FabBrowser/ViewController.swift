//
//  ViewController.swift
//  FabBrowser
//
//  Created by Raymond van Dongelen on 12-09-14.
//  Copyright (c) 2014 NHL Hogeschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mijnURLBalk: UITextField!
    @IBOutlet weak var mijnWebView: UIWebView!

    @IBAction func ga(sender: AnyObject) {
        let req = NSURLRequest(URL: NSURL.URLWithString(mijnURLBalk.text!))
        mijnWebView.loadRequest(req)
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

