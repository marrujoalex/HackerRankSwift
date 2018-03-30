class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var local_count = 0, global_count = 0
        
        for num in nums {
            if num == 1 {
                local_count += 1
                global_count = max(global_count, local_count)
            } else {
                local_count = 0
            }
        }
        
        return global_count
    }
}

// Test - Answer is 4
var sol = Solution()
print(sol.findMaxConsecutiveOnes([1,1,1,0,1,1,1,1,0,1,1,0,1,1,0,1,1,0,1,0,1,1,0,1,0,1,0,1,0,1,0]))
