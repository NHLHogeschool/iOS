//
//  MooieTableViewController.swift
//  TableDemo
//
//  Created by Raymond van Dongelen on 18-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//

import UIKit
class Klant {
    var naam : String
    
    init (naam : String){
        self.naam = naam
    }
}

class MooieTableViewController : UITableViewController {
    var klanten = [Klant(naam: "Raymond"), Klant(naam: "Karen"), Klant(naam: "Pieter")]
    
    override func viewDidLoad() {
        title = "Hallo scherm"
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return klanten.count
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
        
        cell!.textLabel?.text = klanten[indexPath.row].naam
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let view = KlantEditViewController()
        view.klant = klanten[indexPath.row]
        view.view.backgroundColor = UIColor.redColor()
        navigationController!.pushViewController(view, animated: true)
    }
}
















