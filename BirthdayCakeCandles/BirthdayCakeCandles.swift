import Foundation

// Enter your code here 
// read count input
let n = Int(readLine()!)!
// read array input
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let largest = arr.max()
var count = 0

for i in 0..<n {
    if arr[i] == largest {
        count += 1
    }
}

print(count)
