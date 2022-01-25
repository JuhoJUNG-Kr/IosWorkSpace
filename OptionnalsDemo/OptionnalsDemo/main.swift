
let myOptional: String?

myOptional = "Juho"

if let safeOptional = myOptional {
    let text: String = safeOptional
    let text2: String = safeOptional
    print(safeOptional)
}else {
    print("myOptional was found to be nil.")
}

let myOptional2: String?

myOptional2 = nil

let text3: String = myOptional2 ?? "I am the default value"

print(text3)


/*
 1.Force Unwrapping
 optional!
 
 2.Check for nil value
 if optional != nil{
      optional!
 }
 3. Optional Binding
 if let safeOptional = optional{
       safeOptional
 }
 4. Nil Coalescing Operator
 optional ?? defaultValue
 5.Optional Chaining
 optional?.property
 optional?.method()
 */

struct MyOptional {
    var property = 123
    func method(){
        print("I am the struct's method.")
    }
}

let myOptional3: MyOptional?

myOptional3 = MyOptional()

myOptional3?.method()
