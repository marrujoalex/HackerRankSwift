/*
*  Leetcode Easy question
*/

import Foundation

func reverseNumber(_ number: Int) -> Int {
	var result = 0

	// let construct prevents modifying number
	var param = number

	while param != 0 {
		result = (result * 10) + (param % 10)
		param /= 10
	}

	return (result > Int.max || result < Int.min) ? 0 : result
}

// EXAMPLE USAGE
var value = 43232
print(reverseNumber(value)) // 23234
