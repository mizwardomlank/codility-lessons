import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    // commented with Bahasa Indonesia
    // rumus deret Sn = (1/2)n(a + Un)
    // dalam hal ini a = 1, Un = n,
    // untuk mengetahui selisihnya, maka kita cari jumlah dari deret n+1
    
    let n = A.count + 1
    var sum = (n) * (1 + n) / 2
    
    for value in A {
        sum = sum - value
    }
    
    return sum
}

var A = [1, 2, 3, 5]

print (solution(&A))
