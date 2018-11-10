import Foundation

class Solution {
    func urlify(_ str: String) -> String {
        var s = str

        str.forEach {
            if $0 == " " {
                s = s.split(separator: $0).joined(separator: "%20")
            }
        }

        return s
    }
}

let sol = Solution()
print(sol.urlify("This is a test"))