// Playground - noun: a place where people can play

import UIKit

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
    //
    private var klanten = [Klant(naam: "Raymond"), Klant(naam: "Karen"), Klant(naam: "Pieter")]
    
    private init () {
    }
    
    var count : Int {
        return klanten.count
    }
    
    func klantAt (positie: Int) -> Klant {
        return klanten[positie]
    }
}



Klanten.sharedInstance.count
Klanten.sharedInstance.klantAt(2)



var x : AnyObject = 1
var text : AnyObject = "Hallo"


















