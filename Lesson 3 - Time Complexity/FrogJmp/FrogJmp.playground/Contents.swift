import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    // hitung selisih dari x dan y,
    // selisihnya dibuat positif
    // hasilnya dibagi aja dengan D
    
    var selisih = Y - X
    
    if (selisih < 0){
        selisih = selisih * -1
    }
    
    var sisa = 0;
    if (selisih % D != 0){
        sisa = 1
    }
    
    return selisih / D + sisa
}


print (solution(10, 85, 30))
