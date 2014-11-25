// Playground - noun: a place where people can play

import UIKit

//常量 tip:初始化之后不能改变值
let maximunAttempts : Int = 10

//变量 随时可以更改
var currentAttempt : Int = 0
currentAttempt = 12

//多行声明
var x = 0.0, y = 0.0, z = 0.0

//类型标注 标注为字符串的变量
var welcomeMessage : String
welcomeMessage = "hello"

//常量和变量的规则 
// tip1:不能以数字开头 
// tip2:不能包含数学符号，箭头，非法的Unicode码，连线和制表符
// tip3:常量的值一旦确定就不可更改

//常量和变量的输出
//字符串插值:当做占位符来将常量和变量放入圆括号中，并在括号开头使用反斜杠将其转义
println("This is string")
//e.g
println("The current message value is \(welcomeMessage)")

//注释
//这是单行注释
/*这是一个多行注释

*/

//分号 tip:在一行内写多行独立语句就必须使用分号
let cat = "cat";println(cat)

//整数 分为有符Int号和无符号UInt,都与当前平台的原生字长相同
//整数范围
let maxValue = UInt8.max //UInt8的长度 0-255 Int8的长度-128-127
let minValue = UInt.min //0

//浮点数
// Double表示64位浮点数 至少有15位数字
// Float表示32位浮点数 至少有6位数字

//类型安全和类型推断
let meaningOfLife = 42
//常量会被推断为int类型

//类型别名 给现有类型定义另一个名字
typealias AudioSample = UInt8
var maxAmplitudeFound = AudioSample.min

//数值型字面量
let decimalInteger = 17
let binaryInteger = 0b10001   //二进制
let octalInteger = 0o21       //八进制
let hexadecimalInteger = 0x11 //十六进制

//数值型类型转换
//let cannotBeNegative: UInt8 = -1 报错
//let tooBig: Int8 = Int8.max + 1 报错

//布尔值
let orangeAreorange = true
if orangeAreorange {
    println("true")
} else{
    println("false")
}

let i = 1
if i == 1 {
    println("true")
} else {
    println("false")
}

//元组:把多个值组合成一个复合值 可以是任意类型，不要求相同类型
//使用下标来获取元组的单个元素
let http404Error = (404, "NOT found")
println("The status code is \(http404Error.0)")

println("The Status message is \(http404Error.1)")

//元组分解
// tip:如果只需要一部分值，忽略的部分可以使用下划线_标记
let (statusCode, _) = http404Error
println("The Status code is \(statusCode)")

//可选类型：来处理可能缺失的情况。有值等于X或者没有值
let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

//if语句以及强制解析
//tip:当你确定可选类型确定包含值之后，你可以在可选的名字后面加一个感叹号(!)来获取值，需要注意的是使用!来强制解析之前，一定要确定可选包含一个非nil的值，否则会运行时报错

//可选绑定
if let actualNumber = possibleNumber.toInt() {
    println("has an integer")
} else {
    println("could not be")
}

//nil类型
// tip1:nil不能使用在非可选的常量和变量
var serverResponse : Int? = 404
serverResponse = nil

//tip2:如果你声明一个可选常量或变量而且并没有赋值，它们会自动设置为nil
var surveyAnsewer : String?
//此时变量值置为nil

//tip3:在OC中，nil是一个指向不存在的值的指针，而在swift，它是一个确定的值，用来表示值缺省，任何类型的可选状态都可以被设置为nil

//隐式解析可选类型
//tip:如果一个变量之后可能变成nil请不要使用隐式解析可选类型，如果你需要在变量的生命周期中判断是否是nil的话，请使用普通可选类型
let assumedString : String! = "An implicitly unwrapped optional string"
println(assumedString)//不需要叹号

let possibleString : String? = "An optional string"
println(possibleString!)

if (assumedString != nil) {
    println(assumedString)
}

if let definiteString = assumedString {
    println(assumedString)
}

//断言
//使用断言进行调试
let age = -3
assert(age <= 0, "A person's age cannot be less than zero")

//何时使用断言
//tip1:整数类型的下标索引被传入一个自定义的下标脚本实现，但是下标索引值可能太大或太小
//tip2:需要给函数传入一个值，但是非法的值可能导致函数不能正常执行
//tip3:一个可选值是nil，但是后面运行的代码需要一个非nil值


























