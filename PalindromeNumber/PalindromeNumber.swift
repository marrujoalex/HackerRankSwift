// Leetcode Problem 9
// Palindrome Number

import Foundation

class Solution {
    func isNumberPalindrome(_ x: Int) -> Bool {
        // Confirm this value can check for a Palindrome first
        if x < 0 || (x != 0 || x % 10 == 0) { 
            return false 
        } else if x < 10 {
            return true
        }
        
        // Passed check, now declare needed variables
        var param = x // x is immutable, needs to mutate
        var result = 0

        while param != 0 {
            result = result * 10 + param % 10
            param /= 10
        }

        return result == x 
    }
}
