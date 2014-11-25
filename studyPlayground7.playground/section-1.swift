import UIKit

//tutorial:闭包

//1.闭包表达式
//全局函数是一个有名字但不会捕获任何值的闭包
//嵌套函数是一个有名字并可以捕获其封闭函数域内值的闭包
//闭包表达式是一个利用轻量级语法所写的可以捕获其上下文中的变量和常量的匿名闭包

//sorted函数
let names = ["Bob", "Jack"]
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

//var reversed = sorted(names, backwards)

//闭包表达式的语法
//{(parameters) -> returnType in
//    statements
//}

var reversed = sorted(names, { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
//闭包表达式语法可以使用常量、变量和inout类型作为参数，不提供默认值。也可以在参数列表的最后使用可变参数。元组也可以作为参数和返回值。

//根据上下文推断类型


