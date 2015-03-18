//
//  ViewController.swift
//  DelegateVoorbeeld
//
//  Created by Raymond van Dongelen on 08-10-14.
//  Copyright (c) 2014 Vooruit met. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var foutmelding: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textViewShouldBeginEditing(textView: UITextView) -> Bool {
    
        foutmelding.text = "Je bent begonnen"
        return true
    }
    func textViewShouldEndEditing(textView: UITextView) -> Bool {
        
        let klaar = countElements (textView.text) > 40
        if klaar {
            foutmelding.text = "Jij bent awesome!"
        }
        else {
            foutmelding.text = "Tik minimaal 40 letters"
        }
        return klaar
    }
    

}

