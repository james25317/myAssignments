/*:##
 Object-Oriented Swift
 */

//1

class Animal {
    
    enum Gender {
        case male
        case female
        case undefined
    }
    
    func eat() {
        print("I eat everything!")
    }
    
}

let animal = Animal()
animal.eat()

//2

class Elephant: Animal {
    override func eat() {
        print("Elephant eats grass")
    }
    
}

class T​iger: Animal {
    override func eat() {
        print("Tiger eats horse")
    }
    
}

class Horse: Animal {override func eat() {
    print("Horse eats grass")
}

}

let elephant = Elephant()
let tiger = T​iger()
let horse = Horse()

elephant.eat()
tiger.eat()
horse.eat()

//3

class Zoo {
    var weeklyHot: Animal //weeklyHot定義為X型別

    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    } //weeklyHot起始值(型別)為x
}

let zoo = Zoo(weeklyHot: T​iger())

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

//4
/*
 Struct vs Class
 Struct: 結構
 Class: 類型
 Struct: 是value type，儲存values
 Class: 是reference type，是個object
 
 Struct: 宣告新的struct時，value是複製一份獨立的
 Class: 宣告新的class object時，value是共享的
 
 Struct: 不可以複寫properties/methods(可用mutating複寫)
 Class: 可以複寫propertyies/methods
 */

class Home {
    var roomCount = 2
}

var perterHome = Home()
var johnHome = perterHome

johnHome.roomCount = 5
print(perterHome.roomCount) //5, class is reference type


struct Villa {
    var roomCount = 2
}

let peterVilla = Villa()
var johnVilla = peterVilla

johnVilla.roomCount = 5
print(peterVilla.roomCount) //2, struct is value type


//5
//instance method: 須先生成定義型別(class, struct, enum)的實體，才可以call
class Methods {
    func instanceMethods() {
        print("This is instanceMethods")
    }
}

let methods = Methods()
methods.instanceMethods()

//type method: 利用class, struct, enum為型別的方法，不需要生成實體就可以call
class Methods2 {
    class func typeMethods() {
        print("This is typeMethods")
    }
}

Methods2.typeMethods()

//6
/*
 Initilizer:
 將class & struct (& Enum)中的property初始化過程，給與儲存的property設置初始值，含在宣告新實例使用之前執行所需的任何其他設置
 struct也可以不設置起始值，直接給予property實質，藉由實質型別定義起始值(Implicit Initializer)
 class裡所有的stored properties都要有初始值(designated initializer)
 */


//7
/*
 self: 等同於實例本身，使用當前method宣告的屬性
 有點像type method(?，不需要生成實體就可以call
 */

struct compareSelf {
    var x = 10
    func check(x: Int) -> String {
        var msg = ""
        if x > self.x { //self(compareSelf).x = 10
            msg = "your x is greater then my x"
        } else {
            msg = "your x is smaller then my x"
        }
        return msg
    }
}

let compareX = compareSelf() //instance methods
compareX.check(x: 20) //"your x is greater then my x"
compareX.check(x: 9) //"your x is smaller then my x"


//8
/*
 Refernce Type vs Value Type
 Value Type:
 實例(Value)型別可以被宣告一個var/let，或傳送到func使用時，會複製一個獨立的實例
 
 Reference Type:
 參考(Reference)型別再初始化後，宣告一個var/let，或傳送到func使用時，都會回傳到參考到相同的實例
 (儲存一個參考到記憶體 (heap) 儲存實例的位置，共享使用)
 
 */
