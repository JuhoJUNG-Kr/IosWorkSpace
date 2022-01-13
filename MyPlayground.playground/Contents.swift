//This is a comment

import Darwin

print("Hello World")

/*This is a multiple line comment*/

//This is String Interpolation
print("text\(2+3) text")

print("Hello \(2+3) world")
print("The Result of 5+3 = \(5+3)")

//Values 변수 = 변하는 값
var a = 5
var b = 8
print("The value of a is \(a)")
print("The value of b is \(b)")

var numbers = [45, 73, 195, 53]

var coumputedNumbers = [numbers [0] * numbers [1], numbers[1] * numbers[2], numbers[2] * numbers[3], numbers[3] * numbers[0]]

print(coumputedNumbers)

//Constants 상수 = 변하지 않는 값

let someting = "neverChange"

//Integer 정수 = 소수점 이하의 자리가 없음 'int'

//Floating Point Number 부동 소수점 'float'

//Double = 소수점 많이 필요할 때

//Boolean = true/false 'bool'

let randomNumber1 = Int.random(in: 1...3)
let randomNumber2 = Int.random(in: 1..<3)
let randomNumber3 = Float.random(in: 1...3)
print(randomNumber1)
print(randomNumber2)
print(randomNumber3)

//array.randomElement()
//array.shuffle()

    
    let alphabet = ["a", "b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    let password = alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()! + alphabet.randomElement()!

print(password)

func greeting() {
    print("Hello")
}

greeting()

func greeting1() {
    print("hello")
    
    var myName = "juho"
    
    print(myName)
}

func gretting2() {
    print("hey")
}

//Create a Function with Input
//func myFunction(parameter: DataType) {

var myAge = 28
myAge = 18
//myAge = "three" 에러. 이미 myName 이라는 데이터 타입 값에 int 정수 값이 들어갔으므로,
//문자열인 string을 써야하는 "three"는 myName이라는 데이터 타입값에 오지못함

func greeting3(whoToGreet: String) {
    print("Hello \(whoToGreet)")
}
greeting3(whoToGreet: "Lilas")
greeting3(whoToGreet: "Juho")

//Don't change this code:
func calculator() {
  let a = Int(readLine()!)! //First input
  let b = Int(readLine()!)! //Second input
  
  add(n1: a, n2: b)
  subtract(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}
 
//Write your code below this line to make the above function calls work.
func add(n1:Int, n2:Int) {
    print(n1+n2)
}
 
func subtract(n1:Int, n2:Int) {
    print(n1-n2)
}
func multiply(n1:Int, n2:Int) {
    print(n1*n2)
}
func divide(n1:Int, n2:Int) {
    print(Double(n1)/Double(n2))
    // I cast the Int value to Double so that the result could be a Double
}

