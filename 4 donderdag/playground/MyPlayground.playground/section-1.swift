// Playground - noun: a place where people can play

import UIKit
import Foundation


class Klant : NSObject, NSCoding {
    
    var naam: String?
    
    override init() {}
    
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

let ud = NSUserDefaults.standardUserDefaults()

var klant = Klant()
klant.naam = "Raymond"

ud.setObject(NSKeyedArchiver.archivedDataWithRootObject([klant, klant]), forKey: "klant")

if let data = ud.objectForKey("klant") as? NSData {
    let unarc = NSKeyedUnarchiver(forReadingWithData: data)
    let newBlog = unarc.decodeObjectForKey("root") as [Klant]

}
