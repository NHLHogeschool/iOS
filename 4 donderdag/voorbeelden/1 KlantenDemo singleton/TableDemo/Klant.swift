//
//  Klant.swift
//  TableDemo
//
//  Created by Raymond van Dongelen on 18-03-15.
//  Copyright (c) 2015 Vooruit met. All rights reserved.
//
import Foundation
class Klant {
    var naam : String
    
    init (naam : String){
        self.naam = naam
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
 
    
    var count : Int {
        return klanten.count
    }
    
    func klantAt (positie: Int) -> Klant {
        return klanten[positie]
    }
}