// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let tekst = "Hallo"
let x = 1

let xs = [1,2,3,4]
let ys : [Int] = []

var vanAlles = [1, "Hallo", 3]
var vanAlles2 = [1]

if x < 2 {
    println ("hoi")
}

var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
firstForLoop

func average (numbers : [Float]) -> Float{
    var som : Float = 0
    for waarde in numbers{
        som += waarde
    }
    return som / Float(numbers.count)
}

func averagec(numbers:[Int]) -> Double {
    return Double(numbers.reduce(0,+))/Double(numbers.count)
}


averagec (xs)

xs.last!
ys.last


