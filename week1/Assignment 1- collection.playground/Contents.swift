/*:
 ## Collection
 */

//1
var myFriend: [String] = []

//2
myFriend.append("Ian")
myFriend.append("Bomi")
myFriend.append("Kevin")

//myFriend += ["Ian", "Bomi", "Kevin"] 一次加全部

//3
myFriend.append("Michael")
//myFriend.insert("Michael", at: 3) 插入這字串至第四順位

//4
myFriend.swapAt(2, 0)
//swapAt 互換

//5
for friend in myFriend {
    print(friend)
}

//6
//Idex 5  ＝為第6順位

print(myFriend[0]) //Index 0 = "Kevin" 第1順位
//print(myFriend[5])
// Index 5 (Index out of range) 第6順位沒有值

//7
myFriend.first

//8
myFriend.last

//9
var myCountryNumber: [String: Int] = [:]

//10
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81
print(myCountryNumber)

//11
myCountryNumber["GB"] = 0
//or myCountryNumber.updateValue(0, forKey: "GB")

//12
//如題目9 定義dictionary key : value 型別後 = [:]
 
//13
//remove ["US": 1] 刪除key對應的value也會刪除
myCountryNumber.removeValue(forKey: "US")
