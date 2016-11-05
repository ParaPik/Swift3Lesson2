//: Playground - noun: a place where people can play

import UIKit

var position = (x: 0.0, y: 3.0)
var speed = (x: 2.0, y: 4.0)

let mass = 1.0
let dt = 1e-4
let eps = 1e-4
let beta = 0.8
let g = 9.8

var t = 0.0

repeat {
    
    position.x += speed.x * dt
    position.y += speed.y * dt
    
    let acceleration = (x: (-beta * speed.x) / mass, y: (-beta * speed.y - mass * g) / mass)
    
    speed.x += acceleration.x * dt
    speed.y += acceleration.y * dt
    
    t += dt
    
} while position.y >= 0

print("time = \(t)")

