import Foundation

// number of elements
let n = Int(readLine()!)!

// read array and map elements to Int
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var total = 0
let count = arr.count

for i in 0..<count {
    let temp = arr[i]
    total += temp
}

print("\(total)")
