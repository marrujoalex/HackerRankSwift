import Foundation

func fizzer(with number: Int) -> String {
	if number == 0 || number < 0 {
		return "Number must be positive"
	}

	switch (number % 3, number % 5) {
		case (0, 0): return "FizzBuzz"
		case (0, _): return "Fizz"
		case (_, 0): return "Buzz"
		case (_, _); return "\(number)"
	}
}

// output for the function:
(1...100).forEach { print(fizzer(with: $0)) }
