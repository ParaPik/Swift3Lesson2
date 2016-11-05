//: Playground - noun: a place where people can play

import UIKit

let task = "<<>><<>><>"

var left = 0
var right = 10000
var middle = 0

for symbol in task.characters {
    middle = Int(ceil((Double(left) + Double(right)) / 2.0))
    switch symbol {
        case ">":
            left = middle
        case "<":
            right = middle
    default:
        break
    }
}

middle = Int(ceil((Double(left) + Double(right)) / 2.0))
