//: Playground - noun: a place where people can play

import UIKit
import Foundation

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    if (A.count == 0){
        return []
    }
    var result = A
    var i = 0
    var j = 0
    
    let rotate = K%A.count
    
    for numb in A {
        if (i+rotate < A.count){
            result[i+rotate] = numb
        } else {
            result[j] = numb
            j+=1
        }
        i+=1
    }
    
    return result
}

var A : [Int]
A = [6, 6, 8]
var K = 0

print(solution(&A, K))
