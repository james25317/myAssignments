/*:
 ## Basic
 */

//1
let Pi = 3.1415926
//應該用let, 因爲Pi值固定, 值不會變更

//2
let x: Double = 10
let y: Double = 3

let average = (x + y) / 2

//3
/*
 指定型別為Double or Float (浮點數, 含小數點) 即可
 ( 10 / 3 ) 和 ( 10.0 / 3.0 )差別在一個是Int (整數), 而一個是Double (浮點數)
 Float, Double 差別在精度 (6位 / 15位)
 */

let intAvg = 10/3
let doubleAvg = 10.0/3.0

/*
 ( 10 / 3 ) 和 ( 10.0 / 3.0 )差別在一個是Int (整數), 而一個是Double (浮點數)
 ( 10 / 3 ) 儲存了餘數 3
 ( 10.0 / 3.0 ) 則儲存了 3.333333333333333 (Double)
 */

//4
var flag: Bool = true
var inputString: String = "Hello world"
let bitsInBite: Int = 8
let averageScore: Double = 86.8

//5
let salary = 22000
salary + 28000 //output: 50000

//6
let left = 5
let right = 5

left == right //true

//7
let constant1 = 10
let constant2 = 3

let remain = 10 % 3 //output: 1

//8
/*
 let vs var
 let 宣告的常數內容不可變 (指向獨立記憶體位置)
 var 宣告的變數內容可變 (可重新指向不同的記憶體位置)
 */

//9
/*
 Naming Conventions 命名規則
 1. Camel Case 駝峰式命名大部分(variable、constant、property、function、method)
 2. Stucture 命名通常是大寫開頭
 3. 命名意義貼近該型態屬性, 如：func startOver (重新開始的“動作”)
 3. Swift語言講求易讀性, 為了保持維護性, 命名需清晰、明確, 如：setBackroundColor (o) setBkgdColor (x)
 */

//10
/*
 Swift 會根據賦予值自動辨識該資料型別, 如：
 
 let number = 42
 // let number: Int
 
 可用option查看
 */

//11
/*
 var phoneNumber = 	0987654321
 phoneNumber = "Hello World."
 
 phoneNumber 已經自動定義了資料型態為Int
 而"Hello World." 資料型態為String
 */
