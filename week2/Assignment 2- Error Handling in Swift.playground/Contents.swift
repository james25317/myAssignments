/*:## Error Handling in Swift
 */

enum GuessNumberGameError: Error {
    case wrongNumber(Int)
}

class GuessNumerGame {
    var targetNumber = 10

    func guess(number: Int?) throws {
        guard let _number = number, number == targetNumber else {
            throw GuessNumberGameError.wrongNumber(number ?? 0)
        }
        
        print("Guess the right number: \(_number)")
    }
    
}

let guess = GuessNumerGame()

do {
    try guess.guess(number: 20)
} catch GuessNumberGameError.wrongNumber(let wNumber) {
    print("wrong number is \(wNumber)")
}

