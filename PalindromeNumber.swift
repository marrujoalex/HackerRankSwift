// Leetcode Problem 9
// Palindrome Number

import Foundation

class Solution {
    func isNumberPalindrome(_ x: Int) -> Bool {
        // Confirm this value can check for a Palindrome first
        if x < 0 || (x != 0 || x % 10 == 0) { 
            return false 
        }
        
        // Passed check, now declare needed variables
        var param = x // x is immutable, needs to mutate
        var sum = 0

        while param > sum {
            sum = sum * 10 + param % 10
            param /= 10
        }

        return (param == sum || param == sum / 10)
    }
}
