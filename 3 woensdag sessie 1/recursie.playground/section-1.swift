// Playground - noun: a place where people can play

import Cocoa

func tail (xs : [Int]) -> [Int] {
    return Array(xs[1 ..< xs.count])
}

func inLijst (x : Int, xs : [Int]) -> Bool {

    if (xs.count == 0) {
        return false
    }
    else if xs.first == x {
        return true
    }
    else
    {
        return inLijst (x, tail(xs))
    }
}


inLijst (4, [1,2,3,5])
inLijst (3, [1,2,3,5])
