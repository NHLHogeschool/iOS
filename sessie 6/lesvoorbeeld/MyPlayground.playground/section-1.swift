// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum LesToestand {
    case Interested, Bored, Neutral
}

enum StopLicht {
    case Rood, Oranje, Groen
    
}

func verspring (toestand : StopLicht)-> StopLicht {
    
    switch (toestand) {
    case .Rood:
        return .Groen
    case .Groen:
        return .Oranje
    default:
        return .Rood
    }
    
}

verspring (.Rood) == .Groen



