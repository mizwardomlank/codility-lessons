import Foundation


public func solution(_ N : Int, _ M : Int, _ X : inout [Int], _ Y : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var resX, resY: Int

    resX = 0
    resY = 0
    
    if (X.count%2 != 0 || Y.count%2 != 0){
        return 0
    }
    
    X.sort()
    Y.sort()
    
    
    if (X[X.count/2 - 1] != X[X.count/2]){
        resX = X[X.count/2] - X[X.count/2 - 1]
    }
    
    if (Y[Y.count/2 - 1] != Y[Y.count/2]){
        resY = Y[Y.count/2] - Y[Y.count/2 - 1]
    }
    
    return resX + resY
}

var N = 5
var M = 5
var X = [1, 4, 2, 0]
var Y = [2, 0, 1, 4]

print(solution(N, M, &X, &Y))
