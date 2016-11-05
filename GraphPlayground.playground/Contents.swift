//: Playground - noun: a place where people can play

import UIKit

let graph = [
    [Int.max, 2, 3, Int.max],
    [Int.max, Int.max, 8, Int.max],
    [Int.max, Int.max, Int.max, 5],
    [Int.max, Int.max, Int.max, Int.max]
]

var cost = [Int]()
var verticies = [0]
var currentCost = [0]
let finalPoint = 2

while verticies.count > 0 {
    
    let vert = verticies.popLast()!
    let lastCost = currentCost.popLast()!
    var foundPath = false
    
    if vert == finalPoint {
        cost.append(lastCost)
        continue
    }
    
    for i in 0..<graph[0].count {
        if graph[vert][i] != Int.max {
            verticies.append(i)
            currentCost.append(lastCost + graph[vert][i])
            foundPath = true
        }
    }
    
}

print("Min cost = \(cost.min()!)")
