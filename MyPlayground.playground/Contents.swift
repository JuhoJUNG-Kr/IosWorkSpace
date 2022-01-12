//This is a comment

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
