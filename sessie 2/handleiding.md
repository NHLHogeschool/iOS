# Sessie 2
In deze sessie staat de taal swift centraal

## Doel
In deze sessie vooral veel oefenen met de taal.


## Lezen en doen
The swift programming language, de handeliding van Apple.

## Bekijken
Les 2 van Stanford


## Opzet
Theorie + demo's 
Zelf opgaven maken in de playground

## Bekijken

## Code 1

Code 1, thema variabelen:

Eerst een aantal variabelen aanmaken zonder type. Vervolgens laten zien dat je deze niet bij elkaar kan optellen.
(kan ook niet in Ruby, kan wel in JavaScript en php)


Een aantal variabelen maken van verschillende types. Verschil tussen let, en var. Waarom is dit verschil er eigenlijk?


let tekst = "Hallo"
let x = 1

let xs = [1,2,3,4]
let ys : [Int] = []

var vanAlles = [1, "Hallo", 3]
var vanAlles2 = [1]
vanAlles2 += ["hoi"]


xs.last!
ys.last


# Code 2

if x < 2 {
    println ("hoi")
}

let priem_getallen = [1,2,3,5,7]

for getal in priem_getallen{
    println (getal)
}

for i in 0..<4 {
for i in 0...4 {

# Vraag
Maak een functie die het gemiddelde berekent

Advanced: 
func averagec(numbers:[Int]) -> Double {
    return Double(numbers.reduce(0,+))/Double(numbers.count)
}

func average(numbers: Int...)

# Code 3
class Klant {
    var naam :String
    init (naam:String){
        self.naam = naam
    }
}

let r : Klant = Klant(naam: "Raymond")
r

# Code 4 
let sineArraySize = 64

let frequency1 = 4.0
let phase1 = 0.0
let amplitude1 = 2.0
let sineWave = (0..<sineArraySize).map {
    amplitude1 * sin(2.0 * M_PI / Double(sineArraySize) * Double($0) * frequency1 + phase1)
}


