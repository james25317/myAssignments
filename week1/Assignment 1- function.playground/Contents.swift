/*:
 ## Function
 */

//1
func greet(person name: String) -> String{
    return ("Hello, \(name)")
}

greet(person: "Celeste")

//2
func multiply(a: Int, b: Int = 10) {
    print(a*b)
}

multiply(a: 2)

//3
/*
 argument label 參數外部名稱: 用於func外部calling時引用
 parameter name 參數內部名稱: 可用於func內部引用
 */

func callLabel(argumentLable parameterName: String) {
    print("This is \(parameterName)")
}

callLabel(argumentLable: "argumentLable")

/*
 建立外部名稱可讓易讀性提升, 區分調用func的行爲目的
 */

//4
func birthday() -> String{
    
}

func payment() -> Double{
    
}

/*
 func birthday: String
 func payment: Double
 */

