import Foundation


// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    var number = N;
    
    var output = 0
    var count = 0
    var startState = 0;
    
    while (number > 0){
        if (number % 2 == 1){
            if (startState == 0){
                startState = 1
            }
            if (startState == 1){
                if (output < count){
                    output = count
                }
                count = 0
            }
            // printf("1");
        } else {
            if (startState == 1){
                count+=1
            }
            // printf("0")
        }
        number = number/2
    }
    // printf("\n");
    
    return output
}

var N = 1041

print(solution(N))

