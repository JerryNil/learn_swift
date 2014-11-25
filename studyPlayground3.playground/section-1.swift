
import UIKit

//third:字符串和字符

//字符串字面量
let someString = "some string literal value"

//转义字符\0(空字符) \\(反斜杠) \t(水平制表符) \n(换行符) \r(回车符) \"(双引号) \"(单引号)
//unicode标量 携程\u{n} u为小写

let wiseWords = " \"我是要成为海贼王的男人\" -路飞"
let dollarSign = "\u{24}"


//初始化空字符串
var emptyString = ""
var anotherEmptyString = String()
//判断字符串是否为空
if emptyString.isEmpty {
    println("emptyString is empty")
}

//字符串可变性
var name = "cao"
name += "jianwei"

let zengName = "caojianwei"

//字符串是值类型
//String类型是值类型，在进行常量、变量和函数方法中传递时，会进行值拷贝，任何情况下都会进行创建新副本，并对该副本进行传递和赋值

//使用字符：字符串表示的时特定序列的character字符类型值的集合

for character in "hello" {
    println(character)
}

//计算字符数量使用countElements计算字符数量
let message = "hello"
println("message has \(countElements(message)) character")

//连接字符串
//method1:使用+=加法赋值运算符 method2:使用append函数方法
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)

//字符串相等 使用比较运算符 == 
let quotation = "我们都是一样样的."
let sameQuotation = "我们都是一样样的."
if quotation == sameQuotation {
    println("我好开心")
}

//前缀和后缀
//hasPrefix hasSuffix

//大小写字符串
let normal = "Could you help me, plese?"
let shouty = normal.uppercaseString
let whispered = normal.lowercaseString

//Unicode







