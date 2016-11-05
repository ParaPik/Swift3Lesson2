//: Playground - noun: a place where people can play

import UIKit

let sudoku = [
    [1, 2 , 3],
    [3, 1, 2],
    [2, 3, 1]
]

var position: (i: Int, j: Int)? = nil

main: for i in 0..<sudoku.count {
    for j in 0..<sudoku.count {
        
        for z in 0..<sudoku.count {
            if z != j {
                if sudoku[i][z] == sudoku[i][j] {
                    position = (i: i, j: j)
                    break main
                }
            }
            
            if z != i {
                if sudoku[z][j] == sudoku[i][j] {
                    position = (i: i, j: j)
                    break main
                }
            }
        }
        
    }
}

if let position = position {
    print("Sudoku is not ok! Error: (i: \(position.i), j: \(position.j))")
} else {
    print("Sudoku is ok!")
}
