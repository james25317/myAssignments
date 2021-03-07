/*:##
 Enumerations and Optionals in Swift
 */

//1-1
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "Diesel"
    
    func getPrice(gas: Gasoline) -> Int {
        switch gas {
        case .oil92:
            return 100
        case .oil95:
            return 1000
        case .oil98:
            return 10000
        case .diesel:
            return 50
        }
    }
}

//1-2
let gasprice: Gasoline = Gasoline.oil92 //?
gasprice.getPrice(gas: .oil92)


//1-3
Gasoline.oil92.rawValue
let getGas: Gasoline = .oil92
getGas.rawValue


//1-4
//associate value 關聯值: 可以為case夾帶需要的值型別
enum Values {
    case associatevalue1(Int)
    case associateValue2(String, Int)
}

var associateValue = Values.associatevalue1(100)
var ass = Values.associatevalue1(100)
print(associateValue)


//2-1
class Pet {
    var name: String = "cat"
}

class People {
    var pet: Pet?
}

//2-2
let person1 = People()
let personPet1 = Pet()

func foundNilPet(pet: Pet?) {
    guard let _pet = pet else {
        return
    }
    print(_pet)
}

foundNilPet(pet: person1.pet)



//2-3
let person2 = People()

if let petNil = person2.pet {
    print("\(petNil.name)")
}



