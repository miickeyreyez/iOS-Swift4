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

//Arrays
var someInts :[Int] = []
var moreInts = [Int]()

var threeDoubles = Array(repeating:0.0,count:3)
var sixDoubles = threeDoubles + threeDoubles

var shoppingList : [String] = ["Tortillas","Cebolla","Pollo"]
shoppingList.append("Salsa")
shoppingList.isEmpty
shoppingList += ["Aguacate","Chicharrón"]
shoppingList[0]
shoppingList[0] = "Frijoles"
print(shoppingList)
shoppingList[3...5] = ["Guacamole"]
print(shoppingList)
shoppingList.insert("Mostaza",at:0)
print(shoppingList)
shoppingList.remove(at:0)
print(shoppingList)
shoppingList.removeLast()
print(shoppingList)

for z in shoppingList {
    print(z)
}

for (index, item) in shoppingList.enumerated() {
    print("\(index+1) : \(item)")
}

//Sets
//Set<Element>
var letters = Set<Character>()
letters.insert("a")
letters = []

var favFood:Set<String> = ["Pizza","Hamburguesa","Hot dog"]
var moreFood:Set = ["Pescado","Carne"]
favFood.remove("Hot dog")
favFood.contains("Hot dog")

let pares: Set = [0,2,4,6,8]
let impares: Set = [1,3,5,7,9]
let primos: Set = [2,3,5,7,11]

print(pares.union(impares).sorted())
print(pares.intersection(impares).sorted())
print(pares.subtracting(primos).sorted())
print(pares.symmetricDifference(primos).sorted())

let houseAnimals:Set = ["🐶","😾"]
let farmAnimals:Set = ["🐮","🐷","🐥","🐑","😾","🐶"]
let cityAnimals:Set = ["🐭","🕊"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isStrictSubset(of: houseAnimals)
farmAnimals.isStrictSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

//Diccionarios
var integerNames = [Int:String]()
integerNames[32] = "32"
integerNames = [:]

var airports : [String:String] = ["CDMX":"CDMX","Tijuana":"BC","Toluca":"Edo. Mex"]
print(airports)

var pass = ["Ingles":true,"Maths":false]
airports["Puebla"] = "Puebla"
print(airports)

airports.updateValue("Zacatlan", forKey: "Puebla")
print(airports)

let oldValue = airports.updateValue("Benito Juárez", forKey: "CDMX")
print(oldValue)
print(airports)

airports["Tijuana"] = nil
print(airports)

let removedValue = airports.removeValue(forKey: "Puebla")
print(removedValue)
print(airports)

for (airportKey,airportValue) in airports {
    print("\(airportKey) - \(airportValue)")
}

print("*****")

for (_,airportValue) in airports {
    print("\(airportValue)")
}

print("*****")

for airportKey in airports.keys {
    print("\(airportKey)")
}

print("*****")

for airportValue in airports.values {
    print("\(airportValue)")
}

let airportKeys = [String](airports.keys)
let airportValues = [String](airports.values)
print(airportKeys)
print(airportValues)

for i in 1...10 {
    print(i)
}

//Conteo interno de una variable que no se utiliza
for _ in 1...10 {
    print("*")
}

//Ir de n en n
for tick in stride(from:0, to:10, by:2)
{
    print(tick)
}

for tick in stride(from:0, through:10, by:2)
{
    print(tick)
}

var board = [Int](repeating:0,count:10)
print(board)

let num1 = 0
let num2 = 10
var counter = 0


while num1 < num2 {
    print(counter)
    counter += 1
    if counter == num2 {
        break
    }
}

var cuenta = 0
repeat {
    print("Cuenta: \(cuenta)")
    cuenta += 1
} while cuenta < 10

let point = (2,-2)
switch point {
case let(x,y) where x == y:
    print("Iguales")
case let(x,y) where x == -y:
    print("Iguales negativos")
case let(x,y):
    print("Números diferentes")
}

for iterator1 in 1...10 {
    if iterator1 == 5 {
        continue }
    else {
        print(iterator1) }
}

//Fallthrough
let numberFour = 4
switch numberFour {
case 4:
    print(numberFour)
    fallthrough
default:
    print("es nuestro número")
}

//Sentencia nominal
/*https://danericoding.wordpress.com/2017/11/03/s2-01-control-de-flujo*/
 
var contador = 0
gameloop: while contador < 10 {
    print(contador)
    contador += 1
    switch contador {
    case 9:
    break gameloop
    default:
    continue gameloop
    }
}

//Sentencia guard
func greet(person:[String:String])
{
    guard let name = person["name"] else {
        return
    }
    print("Hola \(name)")
    guard let lugar = person["location"] else {
        return
    }
    print("Estás en \(lugar)")
}

greet(person:["name":"Miguel"])
greet(person:["location":"México"])
greet(person:["name":"Miguel","location":"México"])

if #available(iOS 10, macOS 10.12, *) { //watchOS, tvOS
    //Usa apis de iOS 10 en iOS y mac 10.12 en OSX
    
} else {
    //Usa apis anteriores
}

func sayHello(person: String) -> String {
    return "Hola \(person)"
}

print(sayHello(person: "Miguel"))

func swapInts(a: inout Int, b:inout Int)
{
    var temp = a
    a = b
    b = temp
}

var int1 = 4
var int2 = 5
swapInts(a:&int1,b:&int2)
print("\(int1) - \(int2)")

func add2Ints(_ a:Int, _ b:Int) -> Int {
    return a + b
}

print(add2Ints(3,4))

var mathFunction:(Int,Int) -> Int = add2Ints

print(mathFunction(2,2))

func printMathResult(_ mathFunction:(Int,Int) -> Int, _ a:Int, _ b:Int) -> Int {
    print(mathFunction(a,b))
    return mathFunction(a,b)
}

print(printMathResult(add2Ints,3,9))

printMathResult({nint1, nint2 -> Int in return nint1 * nint2 }, 4, 13)

func stepForward(_ int:Int) -> Int {
    return int + 1
}

func stepBackward(_ int:Int) -> Int {
    return int - 1
}

func chooseStepFunction(backward:Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

print("*****")

var currentValue = 3
let moveToZero = chooseStepFunction(backward: currentValue > 0)

while currentValue != 0 {
    print(currentValue)
    currentValue = moveToZero(currentValue)
}

func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    func newStepForward(input: Int) -> Int {return input + 1}
    func newStepBackward(input: Int) -> Int {return input - 1}
    return backward ? newStepBackward : newStepForward
}

var currentValue2 = -5
let moveToZero2 = chooseStepFunction2(backward: currentValue2 > 0)

while currentValue2 != 0 {
    print(currentValue2)
    currentValue2 = moveToZero2(currentValue2)
}







