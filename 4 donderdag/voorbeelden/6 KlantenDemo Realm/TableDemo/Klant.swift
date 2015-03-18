//
//  Klant.swift
//  TableDemo
//
//  Created by Raymond van Dongelen on 18-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//
import Foundation
class Klant : RLMObject {
    override init () {
        super.init ()
    }
    init (naam : String) {
        super.init()
        self.naam = naam
    }
    dynamic var naam : String = ""
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
 
    
    var count : Int {
        return Int(Klant.allObjects().count)
    }
    
    
    func klantAt (positie: Int) -> Klant {
        return Klant.allObjects()[UInt(positie)] as Klant
    }
    
    func voegKlantToe (nieuweKlant : Klant) {
        let realm = RLMRealm.defaultRealm()
        realm.beginWriteTransaction()
        realm.addObject(nieuweKlant)
        realm.commitWriteTransaction()
    }
}