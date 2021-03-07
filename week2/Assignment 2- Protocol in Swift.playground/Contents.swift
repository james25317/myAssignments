/*:##
 Protocol in Swift
 */

//1-1
//struct Person {
//    var name: String
//
//}

protocol PoliceMan {
    func arrestCriminals () -> Void
}


//1-2
//struct Person: PoliceMan {
//    var name: String
//    func arrestCriminals () -> Void {}
//
//}


//1-3
protocol ToolMan {
    func fixComputer() -> Void
}


//1-4
struct Person: PoliceMan, ToolMan {
    var name: String
    var toolMan: ToolMan
    func arrestCriminals () -> Void {}
    func fixComputer() -> Void {}
}


//1-5
struct Engineer: ToolMan {
    func fixComputer() -> Void {}
}


//1-6
let poorGuy = Engineer()
let person = Person(name: "Steven", toolMan: poorGuy)
