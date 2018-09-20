import Foundation
import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    var result = Int.max
    var first = 0
    var second = 0
    var temp: Int
    
    // firstArray
    for data in A{
        first = first + data
    }
    
    // second
    for i in 0..<A.count-1{
        first = first - A[i]
        second = second + A[i]
        temp = first - second
        
        temp = (temp < 0) ? temp*(-1) : temp
        
        if (result > temp){
            result = temp
        }
    }
    
    return result
}
