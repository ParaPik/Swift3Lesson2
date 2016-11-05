//: Playground - noun: a place where people can play

import UIKit

let program = "++++++++++[>+++++++>++++++++++>+++>+<<<<-]>++.>+.+++++++..+++.>++.<<+++++++++++++++.>.+++.------.--------.>+.>."

var storage = [0]
var pointer = 0
var cycles = [Int]()
var readPosition = 0

while readPosition < program.characters.count {
    
    switch program[program.index(program.startIndex, offsetBy: readPosition)] {
        case "+":
            storage[pointer] += 1
        
        case "-":
            storage[pointer] -= 1
        
        case ">":
            if pointer + 1 == storage.count {
               storage.append(0)
            }
        
            pointer += 1
        
        case "<":
            pointer -= 1
        
            if pointer < 0 {
                print("Cannot go left anymore")
            }
        
        case ".":
            let output = UnicodeScalar(storage[pointer])!
            print(output, terminator: "")
        
        case "[":
            if storage[pointer] == 0 {
                readPosition += 1
                var braceCount = 1
                
                while readPosition < program.characters.count {
                    switch program[program.index(program.startIndex, offsetBy: readPosition)] {
                    case "[":
                        braceCount += 1
                        
                    case "]":
                        braceCount -= 1
                    default:
                        break
                    }
                    
                    if braceCount == 0 {
                        break
                    } else {
                        readPosition += 1
                    }
                }
            } else {
                cycles.append(readPosition)
            }
        
        case "]":
            let cycle = cycles.popLast()!
            if storage[pointer] != 0 {
                readPosition = cycle - 1
            }
        
    default:
        break
    }
    
    readPosition += 1
}
