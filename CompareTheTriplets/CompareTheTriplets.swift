// Input:
// [5, 6, 7]
// [3, 6, 10]

import Foundation

// Enter code here
let n = readLine()!.components(separatedBy: " ").map { Int($0) }
let m = readLine()!.components(separatedBy: " ").map { Int($0) }

var alicePoints = 0
var bobPoints = 0

for i in 0..<n.count {
    if n[i] > m[i] {
        alicePoints += 1
    } else if n[i] < m[i] {
        bobPoints += 1
    } else if n[i] == m[i] {
        // do nothing
    }
}

print(alicePoints, bobPoints)
