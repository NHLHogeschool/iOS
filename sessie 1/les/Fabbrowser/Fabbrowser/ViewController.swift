//
//  ViewController.swift
//  Fabbrowser
//
//  Created by Raymond van Dongelen on 18-09-14.
//  Copyright (c) 2014 NHL Hogeschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var urlBalk: UITextField!
    @IBOutlet weak var webview: UIWebView!

    
    @IBAction func ga(sender: AnyObject) {
        val req = NSURLRequest.
        webview.loadRequest(request: req)
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

