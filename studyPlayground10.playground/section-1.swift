import UIKit

//tutorial: 属性
//计算属性可以用于类、结构体和枚举
//存储属性只能用于类和结构体

//1.存储属性（变量存储属性和常量存储属性）

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangeOfThreeItems.firstValue = 6
//该区间现在表示整数6、7、8

//2.常量和存储属性
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

//rangeOfFourItems.firstValue = 6
//因为rangeOfFourItems被声明了常量，即使firstValue是一个变量，也无法修改
//由于结构体是值类型，当值类型的实例被声明为常量的时候，他的属性也变成了常量
//引用类型的类不一样，把一个引用类型的实例给一个常量后，仍然可以修改实例的变量属性

//3.延迟存储属性
//延迟存储属性是第一次被调用的时候才会计算其初始值的属性，用lazy关键字来表示
//将延迟属性声明为变量(使用var关键字)

//4.存储属性和实例变量

//5.计算属性
struct Point {
    var x = 0.0, y = 0.0

}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set (newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
            
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSqueareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)

//6.便捷setter声明
//如果计算属性的setter没有定义新值的参数名，则可以使用默认newValue

//7.属性观察器
//willSet在设置新的值之前调用
//didSet在新的值被设置之后立即调用

//8.全局变量和局部变量
//全局的常量或变量都是延迟计算来的，不同的地方在于，全局的常量或变量不需要标记lazy特性
//局部范围的常量或变量不会延迟计算

//9.类型属性

//10.类型属性语法
//使用关键字static来定义值类型的类型属性，用关键字class来为类定义类型属性
//struct SomeStructure {
//    static var storedTypeProperty = "some value"
//    static var computed: Int {
//        
//    }
//}



//11.获取和设置类型属性的值


