import Foundation

// Enter your code here 
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
    
var lowest = arr[0]
var highest = arr[0]

var highestSum = 0
var lowestSum = 0
var sum = 0
    
for i in 0..<arr.count {
    if arr[i] <= lowest {
        lowest = arr[i]
    }
    
    if arr[i] >= highest {
        highest = arr[i]
    }
        
    sum += arr[i]
}

highestSum = sum - highest
lowestSum = sum - lowest

print("\(highestSum) \(lowestSum)")
