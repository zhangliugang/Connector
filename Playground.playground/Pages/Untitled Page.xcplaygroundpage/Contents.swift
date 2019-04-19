import UIKit

func syncWork() {
	let northZone = DispatchQueue(label: "task_with_team_north")
	let southZone = DispatchQueue(label: "task_with_team_south")
	
	northZone.async {
		for num in 1...3 { print("North \(num)") }
	}
	
	southZone.async {
		for num in 1...3 { print("South \(num)") }
	}
}

syncWork()

(65...90).forEach { print(String(Unicode.Scalar($0))) }
