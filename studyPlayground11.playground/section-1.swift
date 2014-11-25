// Playground - noun: a place where people can play

import UIKit

//tutorial:方法


//1.实例方法
class Counter {
    var count = 0
    func increment() {
        count++
    }
    
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
counter.incrementBy(5)
counter.reset()

//2.类型方法


//tutorial: 继承
//1.定义一个基类
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise() {
        
    }
}

let someVehicle = Vehicle()

//2.子类生成
class Car: Vehicle {
    var hasBasket = false
    
}

let car = Car()
car.hasBasket = true
car.currentSpeed = 15.0

//子类还可以被别的类继承
class Tandom: Car {
    
}

//3.重写(Overriding)
//访问超类的方法，属性以及下标属性
//重写方法
//重写属性
//重写属性观察器

//4.防止重写
//在声明关键字前加上@final特性即可




















