//: Playground - noun: a place where people can play

import UIKit

let a: Double = 0
let b: Double = M_PI
let n: Double = 1000
let h: Double = (b - a) / (n - 1)

var s: Double = 0
var x = a
while x < b + h / 2 {
    let y = sin(x + h / 2)
    s += y * h
    x += h
}

print("Integral = \(s)")
