
struct MyOptional {
    var property = 123
    
    func method() {
        print("I am the struct method")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()

print(myOptional?.property)
myOptional?.method()

//myOptional = "Punreach"

//myOptional = nil

//let name: String = myOptional ?? "No Value"

//print(name)

//if let safeOptional = myOptional {
//    let text: String = safeOptional
//    print(text)
//    print(safeOptional)
//}else{
//    print("My optional is nil")
//}

