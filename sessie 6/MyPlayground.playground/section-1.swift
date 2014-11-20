// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum StrikeType : UInt8{
    case Boven = 0b0001
    case Onder = 0b0010
    case Links = 0b0100
    case Rechts = 0b1000
}

class Cel {
    var content : UInt8 = 0
    func placeStripe (stripe: StrikeType) {
        content = content | stripe.rawValue
    }
    func isSelected (s:StrikeType) -> Bool {
        return content & s.rawValue > 0
    }
}

class Board {
    var board: [[Cel]] = []
    init (dimension:Int){
        for index in 0..<dimension {
            var rij: [Cel] = []
            for index2 in 0 ..< dimension {
                rij.append (Cel())
            }
            board.append(rij)
        }
    }
    
    func placeStripe (x:Int, y:Int, stripe: StrikeType) {
        board[x][y].placeStripe (stripe)
        // Magic
        
        // verstuur notificatie met veranderde cel
    }
    
    func toString () ->String {
        return "hallo"
    }
}
//
//
let b = Board(dimension:8)
b.placeStripe(0, y: 0, stripe: .Boven)
b.placeStripe(0, y: 0, stripe: .Onder)

b.board[0][0]
b.board[0][0].isSelected (.Links)

//b.placeStripe(1, y: 1, stripe: 1)
//let h = b.toString()
//println(h)
//
//b.board[1][1]

StrikeType.Boven.rawValue

let cel: UInt8 = 0b1101
cel & 0b0001
cel & 0b1000

// Aanmaak code
var positions = [UIButton: StrikeType] ()
let topButton = UIButton()


var stripeIndexToEnum = [StrikeType.Boven, StrikeType.Rechts]

positions[topButton] = StrikeType.Boven
// ...


stripeIndexToEnum[0]

//button
// positions[button]







