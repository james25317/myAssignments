//------defined closure function

var oddNumber = { (i: Int) -> Bool in
  if i % 2 == 1 {
    return true
  } else {
    return false
  }
}

print(oddNumber(3))

//------implement closure as perameter in function call

func printOddNumberResult(implementClosure testOddNumber: (Int) -> Bool, number: Int ) {
  print("\(number) is oddNumber? Result: \(testOddNumber(number))")
}

printOddNumberResult(implementClosure: { (i: Int) -> Bool in
  if i % 2 == 1 {
    return true
  } else {
    return false
  }
}, number: 3)

//------closure transform

let oddNumberForm1: (Int) -> Bool = { (i: Int) -> Bool in
  if i % 2 == 1 {
    return true
  } else {
    return false
  }
}

//also:

let oddNumberForm2: (Int) -> Bool = { i in
  if i % 2 == 1 {
    return true
  } else {
    return false
  }
}

//also:

let oddNumberForm3: (Int) -> Bool = {
  if $0 % 2 == 1 {
    return true
  } else {
    return false
  }
}

oddNumberForm1(3)
oddNumberForm2(4)
oddNumberForm3(5)




