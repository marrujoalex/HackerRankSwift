import Foundation

// number of elements
let n = Int(readLine()!)!

// read array and map the elements to integer
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var positiveCount: Double = 0
var negativeCount: Double = 0
var zeroCount: Double = 0

for i in 0..<arr.count {
    if arr[i] < 0 {
        negativeCount += 1
    }
    
    if arr[i] == 0 {
        zeroCount += 1
    }
    
    if arr[i] > 0 {
        positiveCount += 1
    }
}

let positiveFraction = positiveCount / Double(n)
let negativeFraction = negativeCount / Double(n)
let zeroFraction = zeroCount / Double(n)
print(positiveFraction)
print(negativeFraction)
print(zeroFraction)