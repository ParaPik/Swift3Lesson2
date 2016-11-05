//: Playground - noun: a place where people can play

import UIKit

let number = 111121111

var transform = number
var result = 0


while transform > 0 {
    
    let symbol = transform % 10
    result *= 10
    result += symbol
    
    transform /= 10
}

result == number


