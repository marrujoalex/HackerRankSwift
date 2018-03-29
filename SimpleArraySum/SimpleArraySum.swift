// HackerRank challenge #2 using Swift
// Add all the values in the array as a sum

import Foundation

func readLine() -> [Int]? {
    return [1, 2, 3, 4, 10, 11]
}

// Unwrap the optional from the given input
guard let arr = readLine() else { fatalError() }
var total: Int = 0

// Add all values from array into a total amount
arr.forEach{
    total += $0
}

print(total)
