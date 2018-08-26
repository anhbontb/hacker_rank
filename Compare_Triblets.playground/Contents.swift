//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var result = [0,0]
    if (a.count != 3) {
        return result
    }
    if(a.count != b.count) {
        return result
    }
    var i = 0
    while i < a.count {
        if (a[i] > b[i]) {
            result[0] = result[0] + 1
        } else if a[i] < b[i] {
            result[1] = result[1] + 1
        }
        i = i + 1
    }
    return result
}


let result = compareTriplets(a: [1,2,3], b: [2,3,1])
