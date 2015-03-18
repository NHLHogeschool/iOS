//
//  NieuweKlantViewController.swift
//  TableDemo
//
//  Created by Raymond van Dongelen on 18-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import Foundation
import UIKit

class NieuweKlantViewController : UIViewController {
    
    @IBOutlet weak var klantNaam: UITextField!
    @IBAction func voegToe(sender: UIButton) {
        Klanten.sharedInstance.voegKlantToe(Klant(naam: klantNaam!.text!))
        
        self.navigationController?.popViewControllerAnimated(true)
    }
}
