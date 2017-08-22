import Foundation

// read the integer n
let n = Int(readLine()!)!

// print the staircase
let space = " "
let pound = "#"

for i in 1...n {
	let spaceResult = String(repeating: space, count: n-i)
	let poundResult = String(repeating: pound, count: i)
	print("\(spaceResult)\(poundResult)")
}
