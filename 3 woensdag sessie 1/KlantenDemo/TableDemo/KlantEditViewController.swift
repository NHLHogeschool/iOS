//
//  KlantEditViewController.swift
//  TableDemo
//
//  Created by Raymond van Dongelen on 18-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import UIKit

class KlantEditViewController : UIViewController {
    var klant : Klant?
    
    override func viewWillAppear(animated: Bool) {
        assert(klant != nil)
        title = klant!.naam
        
    }
}
    
