//: Playground - noun: a place where people can play

import UIKit

//Variables
var str = "Hello, playground"

//Constantes
let attempsOfLogin = 10

var x = 0.0, y = 0.0, z = 0.0

//Tipo
var welcome:String
welcome = "Hola"

var red, green, blue: Double

let π = 3.14159265

let  🤑 = 4

let 😀😃 = "feliz"

😀😃

print(1,2,3, separator:"-", terminator:".")

print("Welcome: \(str)")

//Números
//UInt8: entero sin signo 8 bits
//Int32: entero de 32 bits
let minValue = UInt8.min
let maxValue = UInt8.max

var entero:Int = 17
var enteroPositivo:UInt = 32

print("\(INT64_MAX)")
print("\(Int64.max)")

//Literales
let decimal = 17
let binario = 0b10001
let octal = 0o21
let hexadecimal = 0x11
let number = 1.25e2
let number2 = 1.25e-2
let number3 = 0xFp2
let number4 = 0xFp-2
let number5 = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let overMillion = 1_000_000.000_000_1

//Casting
let twhoThousand:UInt16 = 2_000
let one:UInt8 = 1
let result = twhoThousand + UInt16(one)
let three = Double(3)
let piFloat = Float(3.141516)
let intPi = Int(3.1416)

//Typealias
typealias enteros16 = UInt16
var max = enteros16.max
var array: [enteros16] = [8,16,32,64]

//Booleans
var bool:Bool
var true_ = true
var false_ = false

//Tuplas
let httpError = (404,"Error, not found")
let httpError2:(Int,String) = (404,"Error, not found")
let coordinates:(Int,Int,Int)

let(statusCode,statusMessage) = httpError
print("\(statusCode), \(statusMessage)")

let(statusCode_,_) = httpError
print("\(httpError.0), \(httpError.1)")

let http200status = (statusCode:200, statusMessage:"OK")

//Opcionales
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) //Int?
print(convertedNumber)

var serverResponseCode : Int? = 404
//serverResponseCode = nil

var answer:String?
if serverResponseCode != nil {
    print("not nil")
    //Valor real
    print("\(serverResponseCode!)")
}
else{
    print("nil")
}

//Optional binding
if let actualNumber = Int(possibleNumber) {
    print("\(possibleNumber)")
}

//Optional nested
if let firstNumber = Int("4") {
    if let secondNumber = Int("53") {
    if firstNumber < secondNumber {
        print ("\(firstNumber) < \(secondNumber)")
        }
    }
}

//Possible and forced string
let possibleString : String? = "String opcional"
//Solamente si se está seguro que no es nulo
let forcedString : String = possibleString!
//String siempre con valor
let assumedString : String! = "String con valor"
let implicitString : String = assumedString

//Errores
func canThrowError() throws {
    
}

do {
    try canThrowError()
} catch {
    
}

func makeASandwich() throws {
    
}

func eatASandwich() {}
func washTheDishes() {}
func buyIngredients() {}

do {
    try makeASandwich()
    eatASandwich()
} catch {
    washTheDishes()
} catch {
    buyIngredients()
}

//Aserciones y precondiciones
//posibles errrores - fallos en producción

let age = -8
//assert(age >= 0, "Edades negativas, no existen")

if(age > 10) {
    print ("Edad permitida")
} else if age > 0 {
    print ("Edad mínima")
} else {
    //assertionFailure("Una edad no puede ser negativa")
}

let index = -5
//precondition(index >= 0, "Los indices deben de ser mayores a 0")
//preconditionFailure("Indices deben ser positivos")

let (n1,n2) = (1,5)

//Avoid overflow
UInt8.max&+1

//Comparación de tuplas
(1,"ABC")<(2,"CDE")
(2,"ABC")<(2,"ABC")
(4,"A")==(4,"A")

//Operador terniario
///pregunta ? true : false
let wallet = 20
let isPayday = true
let newWallet = wallet + (isPayday ? 50 : 0)
let variable = (5 == 5) ? 5 : 0

//nil(a ?? b)
//a != nil ? a! : b
let defaultColor = "green"
var userColor:String?
var colorSelected = userColor ?? defaultColor

//Rangos
//Cerrados (incluyentes) (a...b) -> a <= x <= b
for index in 1...8 {
    print("\(index)")
}
print("***")

//Semiabiertos (a..<b) -> a <= x < b
for index in 1..<8 {
    print("\(index)")
}
print("***")

//Unilateral (a..) o (..a)
let numbers=[0,1,2,3,4,5,6]
for index in numbers[2...] {
    print("\(index)")
}
print("***")

for index in numbers[..<2] {
    print("\(index)")
}
print("***")

//Desde infinito hasta n
let range = ...5
range.contains(7)
range.contains(-2)
range.contains(4)


var s = String()
s.isEmpty

let questionMark:Character = "?"
let dogArray:[Character] = ["🐩","🐕","🐶","🌭"]
let dogString = String(dogArray)

//Unicode
print("\u{1F496}")
print("\u{65}\u{301}")
print("\u{D55C}")
let korean:Character = "\u{D55C}"
let decompose:Character = "\u{1112}\u{1161}\u{11AB}"
print("\u{65}\u{301}\u{20DD}")
let patriots:Character = "\u{1F1FA}\u{1F1F8}"
var animals = "animals"
print("\(animals.count)")

//Indices
var welcome2 = "Hello world"
welcome2[welcome2.startIndex]
welcome2[welcome2.index(before:welcome2.endIndex)]
let indice = welcome2.index(welcome2.startIndex,offsetBy:7)
welcome2[indice]

for index in welcome2.indices {
    
}

welcome2.insert("!",at:welcome2.endIndex)
welcome2.insert(contentsOf:"!",at:welcome2.endIndex)
welcome2.insert(contentsOf:"*",at:welcome2.index(welcome2.endIndex,offsetBy:-3))
print(welcome2)
welcome2.remove(at:welcome2.index(before:welcome2.endIndex))
print(welcome2)

let range2 = welcome2.index(welcome2.endIndex,offsetBy:-3)..<welcome2.endIndex
welcome2.removeSubrange(range2)
print(welcome2)

let blankSpace = welcome2.index(of:" ") ?? welcome2.endIndex
let first = welcome2[..<blankSpace]
let second = welcome2[blankSpace...]
let newString = String(first)

welcome2.hasPrefix("Helloo")
welcome2.hasSuffix("Helloo")






