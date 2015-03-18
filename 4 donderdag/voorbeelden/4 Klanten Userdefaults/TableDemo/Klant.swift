//
//  Klant.swift
//  TableDemo
//
//  Created by Raymond van Dongelen on 18-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//
import Foundation
class Klant : NSObject, NSCoding {
    
    var naam: String?
    
    override init() {}

    init (naam: String){
        self.naam = naam
    }
    
    required init(coder aDecoder: NSCoder) {
        if let naam = aDecoder.decodeObjectForKey("naam") as? String {
            self.naam = naam
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        if let naam = self.naam {
            aCoder.encodeObject(naam, forKey: "naam")
        }
    }
    
}


class Klanten {
    /* Eerst singleton spul */
    class var sharedInstance: Klanten {
        struct Static {
            static var instance: Klanten?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = Klanten()
        }
        
        return Static.instance!
    }
    
    private var klanten = [Klant(naam: "Raymond"), Klant(naam: "Karen"), Klant(naam: "Pieter")]
 
    
    init () {
        let ud = NSUserDefaults.standardUserDefaults()
        
        if let data = ud.objectForKey("klanten") as? NSData {
            let unarc = NSKeyedUnarchiver(forReadingWithData: data)
            klanten = unarc.decodeObjectForKey("root") as [Klant]
            
        }
    }
    
    var count : Int {
        return klanten.count
    }
    
    func klantAt (positie: Int) -> Klant {
        return klanten[positie]
    }
    
    func voegKlantToe (nieuweKlant : Klant) {
        klanten.append(nieuweKlant)

        // Bewaar
        let ud = NSUserDefaults.standardUserDefaults()
        
        ud.setObject(NSKeyedArchiver.archivedDataWithRootObject(klanten), forKey: "klanten")
    
    }
}