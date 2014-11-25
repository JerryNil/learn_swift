// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//基本运算符！！！

//术语
/*
num1:一元运算符-对单一对象操作 例如：自增i++
num2:二元运算符-操作两个对象 例如：赋值 a=b
num3:三元运算符 例如：a?b:c
*/

//赋值运算符
let a = 10
var b = 5
b = a

//tip1:swift中赋值操作并不返回任何值
let (x, y) = (3, 4)

//算术运算符 四中算术运算符
1 + 2
5 - 3
2 * 3
10.0 / 2.5

"hello" + "world!"

let dog: String = "d"
let cow: String = "c"
let dogcow = dog + cow

//求余运算符
//求余公式：a = (b x 倍数) + 余数
9 % 4
-9 % 4

//浮点数求余计算

//自增和自减运算符
//++前置，先自增后返回
//++后置，先返回后自增

//空合运算符 a ?? b
//2个条件 1.表达式a必须是optional类型 2.默认值b的类型必须要和a存储值的类型保存一致
//简短表达方式：  a != nil ? a! : b
let defaultColorNmae = "red"
var userDefinedColorName : String?
var colorNameToUse = userDefinedColorName ?? defaultColorNmae
//因为userDefinedColorName的值为空，所以colorNameToUse的值为‘red’

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorNmae
//此时userDefinedColorName的值为‘green’，所以colorNameToUse的值为‘green’

//区间运算符 闭区间和半开区间
//闭区间 a...b 定义一个包含从a到b的所有值的区间 b必须大于a
for index in 1...5 {
    println("\(index) * 5 = \(index*5)")
}

//半开区间 a..<b 定义一个从a到b但是不包含b的区间的所有值的区间
let names = ["Anna", "Alex", "Jack", "James"]
let count = names.count
for i in 0..<count {
    println("第\(i+1)个人叫\(names[i])")
}

//逻辑运算符

//使用括号去明确优先级

