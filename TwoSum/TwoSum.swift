// TwoSum.swift

// LeetCode 001 - Medium

import Foundation

class Solution {
    func twoSum(_ numbers: [Int], target: Int) -> [Int] {
        var hashMap = [Int: Int]()
        var result = [Int]()
        for i in 0..<numbers.count {
            let numberToFind = target - numbers[i]
            if let numberToFindIndex = hashMap[i] {
                result.append(numberToFindIndex)
                result.append(i)
                
                return result
            }
            else {
                hashMap[numbers[i]] = i
            }
        }
        return result
    }
}
