import UIKit

//tutorial: 类和结构体
//1.类和结构体对比
//定义属性用于存储值
//定义方法用于提供功能
//定义附属脚本用于访问值
//定义构造器用于生成初始化值
//通过扩展以增加默认实现的功能
//符合协议以对某类提供标准功能

//与结构体相比，类还有如下功能
//继承允许一个类继承另一个类的特征
//类型转换允许在运行时检查和解释一个类实例的类型
//解构器允许一个类实例释放任何其所被分配的资源
//引用计数允许对一个类的多次引用

//类和结构体的定义声明

class SomeClass {
    
}

struct SomeStruct {
    
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name : String!
}

//2.类和结构体的实例

let resolution = Resolution()
let videoMode = VideoMode()


//3.属性访问
//使用点语法进行属性访问

//4.结构体类型的成员逐一构造器
let vga = Resolution(width: 640, height: 480)

//5.结构体和枚举是值类型


















