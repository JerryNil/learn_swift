// Playground - noun: a place where people can play

import UIKit

//titorial:构造过程(Initialzation)

//1.存储型属性的初始赋值
//类和结构体在实例创建时，必须为所有存储型属性设置合适的初始值

//构造器
struct Fatherheit {
    var temperature:  Double
    init() {
        temperature = 35.0
    }
}

var f = Fatherheit()

//默认属性值
struct FatherHeitOther {
    var temperatures = 32.0
}

//2.定制化构造过程
//构造参数

//内部和外部参数

//可选属性类型

//构造过程中常量属性的修改


//3.默认构造器
//如果类中所有属性都有默认值，且它是没有父类的基类，它将自动获得一个可以为所有属性设置初始值的默认构造器

//结构体的逐一成员构造器


//4.值类型的构造器代理

//5、类的继承和构造过程
//指定构造器和便利构造器，确保所有类实例中存储属性都能获得初始值
//每一个类都必须拥有一个指定构造器

//构造器链(三规则)
//规则一:指定构造器必须调用其直接父类的指定构造器
//规则二:便利构造器必须调用同一类中的其他构造器
//规则三:便利构造器必须最终以一个指定构造器结束

//总结：指定构造器必须向上代理，便利构造器必须是横向代理


//安全检查（四种有效的安全检查）
//安全检查1
//指定构造器必须保证它所在的类引入的所有属性都必须先初始化完成，之后才能将其他构造任务向上代理给父类中的构造器

//安全检查2
//指定构造器必须向上代理调用父类构造器，然后再为继承的属性设置新值，如果没那么做，指定构造器赋予的新值将被父类中的构造器所覆盖

//安全检查3
//便利构造器必须先代理调用同一类中的其他构造器，然后再为任意属性赋予新值。如果没那么做，便利构造器赋予的新值将被同一个类中其他指定构造器所覆盖

//安全检查4
//构造器在第一阶段构造玩之前，不能调用任何实例方法，不能读取任何实例属性的值，也不能引用self的值。

//指定构造器和便利构造器语法
//init(parameters) {
//    statements
//}
//
//convenience init(parameters) {
//    statements
//}

//实战

class Food {
    var name: String
    init (name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

//2.通过闭包和函数来设置属性的默认值
//如果你使用闭包来初始化属性的值，请记住在闭包执行时，实例的其他部分都还没有初始化。这意味着你不能够在闭包里访问其他的的属性，就算这个属性有默认值也不允许。同样，你也不能使用隐式的self属性，或者调用其他的实例方法














