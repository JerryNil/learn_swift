import UIKit

//tutorial: 函数Functions

//1.函数的定义和调用
func sayHello(personName: String) -> String {
    return "Hello, " + personName + " !"
}

sayHello("caojianwei")

//2.函数参数和返回值
//--多重输入参数
func halfOpenRangeLength(start: Int, end: Int) -> Int {
    return end - start
}

halfOpenRangeLength(1, 10)

//--无参函数
func sayHelloWorld() -> String {
    return "Hello, Caojianwei"
}

sayHelloWorld()

//--无返回值函数
func sayGoodBye(personName: String) {
    println("GoodBye, \(personName)")
}
sayGoodBye("caojianwei")

//--多重返回值函数
func count(stringnamed: String) -> (vowels: Int, consonants: Int, others: Int) {
    var vowels = 0, consonants = 0, others = 0;
    for character in stringnamed {
        switch String(character).lowercaseString {
            case "a", "e", "i", "o", "u":
                ++vowels
            case "b", "c", "d", "f":
                ++consonants
            default:
                ++others;
        }
    }
    return (vowels, consonants, others)
}

//3.函数参数名称

//外部参数名
func join(string s1: String, toString s2: String, withJoiner joiner: String) -> String {
    return s1 + joiner + s2
}
//第一个参数有一个叫string的外部参数和s1的局部参数名，第二个参数有一个toString的外部参数名和s2的局部参数名，以此类推

join(string: "hello", toString: "world", withJoiner: " , ")

//简化外部参数名
func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
    for character in string {
        if character == characterToFind {
            return true
        }
    }
    return false
}
let containsAVee = containsCharacter(string: "aadsdad", characterToFind: "a")

//默认参数值
func join(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}
join("hello", "caojianwei")
//默认值参数的外部参数名

//可变参数

//常量参数和变量参数
//函数参数默认是常量，在函数体内试图更改变量将会报错，可以通过在变量名前加关键字var来定义变量参数
func alignRight(var string: String, count: Int, pad: Character) -> String {
    let amountToPad = count - countElements(string)
    if amountToPad < 1 {
        return string
    }
    let padString = String(pad)
    for _ in 1...amountToPad {
        string += padString
    }
    return string
}








