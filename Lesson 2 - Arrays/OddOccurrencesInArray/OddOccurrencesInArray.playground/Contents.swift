//: Playground - noun: a place where people can play
import UIKit
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    var result = 0
    
    for data in A {
        result = result^data
    }
    
    return result
}

var A : [Int]
A = [6, 6, 8, 8, 6, 6, 4]

print(solution(&A))
