//
//  MooieTable.swift
//  Tabledemo
//
//  Created by Raymond van Dongelen on 10-11-14.
//  Copyright (c) 2014 Vooruit met. All rights reserved.
//

import UIKIt

class MooieTable : UITableViewController, UITableViewDataSource {
    let CELL_ID = "Bladibla"
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println ("Uitgevoerd|")

        var cell = tableView.dequeueReusableCellWithIdentifier(CELL_ID) as? UITableViewCell
        
        if (cell == nil) {
            cell = UITableViewCell()
        }
        cell!.textLabel.text = "Hallo"
        cell!.detailTextLabel?.text = "Bla"
        return cell!

    }
}