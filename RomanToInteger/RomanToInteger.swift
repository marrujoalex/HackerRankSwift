import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        var result: Int = 0
        for c in s.reversed() {
            switch c {
                case "I": result += result >= 5 ? -1 : 1
                case "V": result += 5
                case "X": result += 10 * (result >= 50 ? -1 : 1)
                case "L": result += 50
                case "C": result += 100 * (result >= 500 ? -1 : 1)
                case "D": result += 500
                case "M": result += 1000
                default : break
            }
        }

        return result
    }
}
