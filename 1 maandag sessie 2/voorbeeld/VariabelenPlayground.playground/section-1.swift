// Playground - noun: a place where people can play

import UIKit

var tekst = "Hallo"
let x = 1
var y = 2.1

var xs = [1,2,3,4]
var ys = [1, "hallo", 3.0]

xs.append(5)

if x > 0 {
    println ("Hoi")
}

let priemGetallen = [1,2,3,5,7]
var som = 0

for getal in priemGetallen {
    som += getal
    println (getal)
}

for i in 0 ..< 4{
    println (i)
}

for i in 0 ... 4{
    println (i)
}


func som (x : Int, y : Int) -> Int{
    return x + y
}



som (3,4)


func average (getallen : [Double]) -> Double {
    var totaal = 0.0
    for item in getallen {
        totaal += item
    }
    return (totaal / Double(getallen.count))
}

func average2 (getallen : Double...) -> Double {
    return Double(getallen.reduce(0, +)) / Double(getallen.count)
}


let rij = [1.0,2.0,3.0]

average (rij)

average2 (1,2,3,4)
var name : String? = "Hallo"
name

if let n = name{
    println (n)
}


class Klant {
    var name: String
    var krediet : Double
    init (klantNaam:String, krediet:Double ) {
        name = klantNaam
        self.krediet = krediet
    }
    
    func getName () ->String{
        return name
    }
}

let raymond = Klant(klantNaam: "Raymond", krediet:0.0)

let klanten = [raymond, Klant(klantNaam: "Pieter", krediet:100.0)]

let sineArraySize = 64

let frequency1 = 2.0
let phase1 = 0.0
let amplitude1 = 2.0
let sineWave = (0..<sineArraySize).map {
    amplitude1 * sin(2.0 * M_PI / Double(sineArraySize) * Double($0) * frequency1 + phase1)
}







