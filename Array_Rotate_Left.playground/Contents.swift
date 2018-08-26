//: Playground - noun: a place where people can play

import UIKit


let array = [1, 2, 3, 4, 5]

func rotLeft(a: [Int], d: Int) -> [Int] {
    if a.isEmpty {
        return a
    }
    
    var left = d % a.count
    if left <= 0 {
        return a
    }
    var right = a.count - left
    var result = a
    
    if (left <= right) {
        while left > 0 {
            let firt = result.removeFirst()
            result.append(firt)
            left = left - 1
        }
    } else {
        while right > 0 {
            let last = result.removeLast()
            result.insert(last, at: 0)
            right = right - 1
        }
    }
    return result
}

let result = rotLeft(a: array, d: 3)
