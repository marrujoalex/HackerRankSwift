import Foundation

// Read the string
let s = readLine()!

let hoursWithPM = s.substring(to: s.index(s.startIndex, offsetBy: 2))
let PMAM = s.substring(from: s.index(s.endIndex, offsetBy: -2))

var minAndSeconds = s.substring(from: s.index(s.startIndex, offsetBy: 2)).substring(to: s.index(s.endIndex, offsetBy: -4))

var hoursWithoutPM: String {
	if hoursWithPM == "12" {
		return PMAM == "AM" ? "00" : "12"
	}
	return PMAM == "AM" ? hoursWithPM : String(12 + Int(hoursWithPM)!)
}

print("\(hoursWithoutPM)\(minAndSeconds)")