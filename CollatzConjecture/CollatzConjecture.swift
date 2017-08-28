import Foundation

func reducer(_ n: Int) -> Int {
	var result: Int = 0
	if n < 1 {
		print("Number must be positive.")
		return 0
	}

	while n != 1 {
		switch (n % 2) {
			case 0:
				result = n / 2
				print(result)
				return reducer(result)
			case 1:
				result = (n * 3) + 1
				print(result)
				return reducer(result)
			default:
				return 0
		}
	} 
	return n
}

// test case to view results
let finale = reducer(453)
