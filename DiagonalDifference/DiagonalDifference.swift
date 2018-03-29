import Foundation

// read n
let n = Int(readLine()!)!

// declare 2d array
var arr: [[Int]] = []

// read array row-by-row
for _ in 0..<n {
    arr.append(readLine()!.components(separatedBy: " ").map { Int($0)! }
}

// temp value used for array-indexed value
var temp = 0

// Diagonal sums
var leftD = 0
var rightD = 0

for j in 0..<n {
    for k in 0..<n {
        temp = arr[j][k]
        if j == k {
            leftD += temp
        }

        if j + k == (n - 1) {
            rightD += temp
        }
    }
}

// Assign the answer to be the absolute value of the difference of diagonal sums
let answer = abs(leftD - rightD)
print("\(answer)")
