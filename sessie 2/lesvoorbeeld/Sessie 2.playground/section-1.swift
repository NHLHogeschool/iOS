// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var waarde = 1
let waarde2 = 2

waarde = 100
let getallen = [1,2,3]
var som = 0



func geef_een() -> Int{
    return 1
}

func give_me_more () -> (Int, Int){
    return (1,2)
}

func average (nummers : [Int]) -> Double{
    var som : Double = 0
    for getal in nummers {
        som += Double(getal)
    }
    return som / Double(nummers.count)
}

func average2 (nummers : Int...) -> Double{
    return 0.0
}

class Adres {
    var straat : String
    init (straatNaam : String){
        straat = straatNaam
    }
}
class Klant {
    var naam : String
    var woonAdres : Adres
    var bezorgAdres : Adres
    var krediet : Double
    
    init (eenNaam :String, woonAdres : Adres, bezorgAdres : Adres, krediet: Double) {
        naam = eenNaam
        self.woonAdres = woonAdres
        self.bezorgAdres = bezorgAdres
        self.krediet = krediet
    }
}

func armste_klant (klanten : [Klant]) -> Klant? {
    if klanten.count == 0 {
        return nil
    }
    else {
        var armste = klanten.first!
        for klant in klanten {
            if klant.krediet < armste.krediet {
                armste = klant
            }
        }
        return armste
    }
}

let raymond = Klant (eenNaam:"Raymond", woonAdres:Adres (straatNaam: "Griene Daam"), bezorgAdres:Adres (straatNaam: "Rengerslaan"), krediet: 1000)

let tjerk = Klant (eenNaam:"Tjerk", woonAdres:Adres (straatNaam: "Griene Daam"), bezorgAdres:Adres (straatNaam: "Rengerslaan"), krediet: 500)
var klanten : [Klant] = [raymond, tjerk]
armste_klant(klanten)
armste_klant([])







func draaiom <T> (nummers : [T]) -> [T]{
    var resultaat : [T] = []
    for getal in nummers {
        resultaat.insert(getal, atIndex: 0)
    }
    
    return resultaat
}

draaiom ([1,2,3,4])
draaiom (["b", "a"])

draaiom (klanten)




klanten.reduce(klanten.first!, {(k1 : Klant, k2 : Klant) -> Klant in
        if(k1.krediet < k2.krediet){
            return k1
        }
        return k2
    })




klanten.reduce(klanten.first!, {(k1, k2)  in
    if(k1.krediet < k2.krediet){
        return k1
    }
    return k2
})

klanten.reduce(klanten.first!, {(k1, k2)  in
    return k1.krediet < k2.krediet ? k1 : k2
})

klanten.reduce(klanten.first!, {
    return $0.krediet < $1.krediet ? $0 : $1
})

func laagste_krediet (k1: Klant, k2 : Klant) -> Klant {
    return k1.krediet < k2.krediet ? k1 : k2
    
}

klanten.reduce(klanten.first!, laagste_krediet)









//Hierna voor nerds
let getallen2 = [1,2,3,4,5,5,6]

getallen2.reduce(1, combine: +)


func * (text:String, number : Int )->String{
    var result = ""
    for i in 0..<number {
        result += text
    }
    return result
}
"raymond" * 3
    
let sineArraySize = 64

let frequency1 = 4.0
let phase1 = 0.0
let amplitude1 = 2.0
let sineWave = (0..<sineArraySize).map {
    amplitude1 * cos(1.0 * M_PI / Double(sineArraySize) * Double($0) * frequency1 + phase1)
}

let view = UIView(frame: CGRectMake(0,0,100,100))
view.backgroundColor = UIColor.redColor()



