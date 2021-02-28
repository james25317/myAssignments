//: ##  Control Flow

//1
let lottoNumbers = [10, 9, 8, 7, 6, 5]

for Number in lottoNumbers[3...5] {
    print(Number)
}

//2-1
print("---2-1")
for Number in lottoNumbers.reversed() {
    print(Number)
}

//2-2
print("---2-2")
for Number in lottoNumbers where Number % 2 == 0 {
    print(Number)
}

for Number in lottoNumbers.filter({$0 % 2 == 0}) {
    print(Number)
}
//not sure what it means. I'll find out later. ($0)


//3-1
print("---3-1")
var reversedArray = lottoNumbers.reversed()
var newArray = Array(reversedArray)
var cursor = 0
while cursor < reversedArray.count {
    print(newArray[cursor])
    cursor += 1
}


//3-2
print("---3-2")
var cursor2 = 0
while cursor2 < lottoNumbers.count {
    if lottoNumbers[cursor2] % 2 == 0 {
        print(lottoNumbers[cursor2])
    }
    cursor2 += 1
}

//4
print("---4-1")
var cursor3 = 0
repeat {
    if lottoNumbers[cursor3] % 2 == 0{
        print(lottoNumbers[cursor3])
    }
    cursor3 += 1
} while cursor3 < 6


//5
/*
 While Loops VS Repeat While Loops
 
 While 是一個前測式迴圈: 先判斷while條件，再進入{}執行，執行完後回到while再次判斷，
 直到條件不符合，跳出迴圈
 */

// var i = 1
// while i < 10 {
// print(i)
// i = i + 1
// }

/*
 output:
 1
 2
 3
 4
 5
 6
 7
 8
 9
 */

/*
 Repeat-While 是一個後測式迴圈: 先執行{}內容，判斷while條件是否符合，不符合就跳出迴圈
 */

// repeat {
// print(i)
// i = i + 1
// } while i < 10

/*
 output:
 1
 2
 3
 4
 5
 6
 7
 8
 9
 */

//6
var isRaining = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//7
var jobLevel: [Int] = [1, 2, 3, 4]

func readJobNumber(list: Array<Int>) {
    for x in jobLevel {
        switch x {
        case 1:
            print("Member")
        case 2:
            print("Teamleader")
        case 3:
            print("Manager")
        case 4:
            print("Director")
        default:
            print("We don't have this job")
        }
    }
}

readJobNumber(list: jobLevel)



