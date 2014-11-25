// Playground - noun: a place where people can play

import UIKit

//tutorial:析构过程

//1.析构过程原理
//使用关键字deinit来表示析构函数，析构函数只适用于类类型
//deinit {
//    
//}
//每个类最多只能有一个析构函数

//2.析构函数操作


//tutorial:自动引用计数
//引用计数仅仅应用于类的实例。结构体和枚举都是值类型，不是引用类型，也不是通过引用的方式存储和传递
//循环强引用

//解决循环强引用
//swift提供了2种方法来解决循环强引用，弱引用和无主引用
//对于生命周期中会变为nil的实例使用弱引用。相反的，对于初始化赋值后再也不会被赋值为nil的实例，使用无主引用
//弱引用 weak 必须声明为变量  值会改变
//无主引用 unowned 总被定义为非可选类型

//tutorial:可选链

//可选链可替代强制解析
class Residence {
    var numberOfRooms = 1
}

class Person {
    var residence: Residence?
}

let john = Person()
let roomCount = john.residence?.numberOfRooms

if let roomCount = john.residence?.numberOfRooms {
    
}
else {
    
}

//为可选链定义模型类

//通过可选链调用属性


//tutorial:类型转换

//检查类型 使用is关键字

//向下转型 使用关键字as   as?可选

//Any和AnyObject的类型转换
//AnyObject可以代表任何class类型的实例
//Any可以表示任何类型，除了方法类型


