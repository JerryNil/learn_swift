import UIKit
import Foundation

//tutorial: 枚举

//枚举语法:必须以大写字母开头，起一个单数名字而不是复数名字，更加容易理解
enum CompassPoint {
    case East
    case South
    case West
    case North
}

var directionToHead = CompassPoint.East

//当变量的类型已知时，当设定它的值时，可以不再用类型名
directionToHead = .West

//匹配枚举值和Switch语句
switch directionToHead {
    case .East:
        println("east")
    case .South:
        println("south")
    case .West:
        println("west")
    case .North:
        println("north")
    
}
//必须要考虑到枚举的全面性，也就是全部成员都要写case或者写一个默认default分支

//相关值
enum Barcode {
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

var productBarCode = Barcode.UPCA(8, 85909_51226, 3)
productBarCode = .QRCode("ABCDEFGHIJKLMN")

switch productBarCode {
    case let .UPCA(numberSystem, identifier, check):
        println("upca")
    case let .QRCode(productCode):
        println("qrcode")
}

//原始值
enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

let earthsOrder = Planet.Earth.rawValue

let possbileOrder = Planet(rawValue: 7)




