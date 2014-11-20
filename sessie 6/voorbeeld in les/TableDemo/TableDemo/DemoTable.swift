//
//  DemoTable.swift
//  TableDemo
//
//  Created by Raymond van Dongelen on 10-11-14.
//  Copyright (c) 2014 Vooruit met. All rights reserved.
//

import UIKit

class DemoTable : UITableViewController, UITableViewDataSource {
    var boeken = ["Pinkeltje", "Vos en Haas", "Big nerd"]
    let CELL_TYPE_ID = "HALLO_VELD"
    
    override func viewDidLoad () {
        self.title = "Boeken"
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boeken.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        var cell = tableView.dequeueReusableCellWithIdentifier(CELL_TYPE_ID) as? UITableViewCell
        
        if (cell == nil) {
            println ("Nieuwe cell aangemaakt bij \(indexPath.row)")

            cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: CELL_TYPE_ID)
        }
        
        cell!.textLabel.text = boeken[indexPath.row]
        
        return cell!
    }
    
    
}
