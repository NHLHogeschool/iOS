//
//  MooieTableViewController.swift
//  TableDemo
//
//  Created by Raymond van Dongelen on 18-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import UIKit

class MooieTableViewController : UITableViewController {
    override func viewDidLoad() {
        title = "Hallo scherm"
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 100
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        println ("Uitgevoerd \(indexPath)")
        
        var cell : UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("hallo_cell") as? UITableViewCell
        
        if (cell == nil) {
            cell = UITableViewCell (style: .Default, reuseIdentifier: "hallo_cell")
            println ("Nieuwe cell aangemaakt \(indexPath)")
        }
        
        cell!.textLabel?.text = "Hallo"
        cell!.detailTextLabel?.text = "allemaal"
        
        return cell!
    }
}








