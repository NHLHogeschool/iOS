// Playground - noun: a place where people can play

import UIKit

func draaiOm (getallen : [Int]) -> [Int]
{
    var resultaat : [Int] = []
    
    for getal in getallen {
        resultaat.insert(getal, atIndex: 0)
    }
    return resultaat
}

func draaiOm2(getallen : [Int]) -> [Int]
{
    var resultaat : [Int] = []
    
    for var i = (getallen.count-1); i >= 0 ; i-- {
        resultaat.append(getallen[i])
    }
    return resultaat
}

func tail (xs : [Int]) -> [Int] {
    return Array(xs[1 ..< xs.count])
}
tail ([1,2,3,4])


func draaiOm3 (getallen : [Int]) -> [Int] {
    var resultaat :[Int]=[]
    if getallen.count == 0 {
        return []
    }
    else {
        return draaiOm3(tail(getallen)) + [getallen.first!]
    }
}


draaiOm([1,2,3,4])
draaiOm2 ([1,2,3,4])
draaiOm3([1,2,3,4])

func minAndMax (getallen : [Int]) -> (minimum: Int, maximum: Int)
{
    if (getallen.count > 0){
        var max = getallen.first!
        var min = getallen.first!
        
        for getal in getallen {
            if (min > getal){
                min = getal
            }
            if (max < getal) {
                max = getal
            }
        }
        return (min, max)
        
    }
    return (0,0)
    
}


minAndMax ([1,2,3,4])





func addInSorted (x : Int, xs : [Int]) -> [Int]
{
    if (xs.count == 0) {
        return [x]
    }
    else if x < xs.first! {
        return [x] + xs
    }
    else {
        return [xs.first!] + addInSorted(x, tail(xs))
    }
}

[1,2,3,7,8]
5
addInSorted(5, [1,2,3,7,8])


func fac (x: Int) -> Int {
    if x == 0 {
        return 1
    }
    else {
        var r = x * fac(x-1)
        return r
    }
}

func bevat (getal : Int, lijst : [Int]) -> Bool {
    return false
}

fac (3)
fac (0)



func telop (x:Int, y : Int) -> Int{
    return x + y
}




// Optionals
var optionalWaarde : Int? = 5
var waarde : Int = 3

// Mag niet
// optionalWaarde + 5

// Moet
optionalWaarde! + 5
waarde + 5

telop(optionalWaarde!, 5)

optionalWaarde?.description






















