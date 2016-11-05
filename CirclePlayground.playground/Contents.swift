//: Playground - noun: a place where people can play

import UIKit

var points: [(x: Double, y:Double)] = []

for i in 1...5 {
    points.append((x: Double(Int(arc4random()) % 20), y: Double(Int(arc4random()) % 20)))
}

for i in 0..<points.count {
    for j in (i + 1)..<points.count {
        for z in (j + 1)..<points.count {
            let point1 = points[i]
            let point2 = points[j]
            let point3 = points[z]
            
            if point1.x != point2.x && point3.x != point2.x {
                let ma = (point2.y - point1.y) / (point2.x - point1.x)
                
                let mb = (point3.y - point2.y) / (point3.x - point2.x)
                
                if mb != ma && mb != 0 && ma != 0 {
                    var x = ma * mb * (point1.y - point3.y) + mb * (point1.x + point2.x) - ma * (point2.x + point3.x)
                    x /= 2 * (mb - ma)
                    
                    var y = (x - (point2.x + point3.x) / 2) + (point2.y + point3.y) / 2
                    y /= -ma
                    
                    var R = sqrt(pow(x - point1.x, 2) + pow(y - point1.y, 2))
                }
            }
        }
    }
}