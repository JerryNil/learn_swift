import UIKit

//tutorial:集合类型

//1.数组
//数组，在初始化必须明确类型，通过显式的类型标注或类型推断
//语法一
var nameList: Array<String> = ["Bob", "Jack"]
//语法二
var shoppingList : [String] = ["eggs", "milk"]
//语法三(类型推断)
var shoppingLists = ["eggs", "milk"]

//计算数组中的数据项数量
var count = shoppingList.count

//来判断数组是否为空
var isempty = shoppingList.isEmpty

//向数组中增加数据项
shoppingList.append("Flour")
//or
shoppingList += ["Butter", "Cheese"]

//通过下标获取相应所以的元素值
var firstItem = shoppingList[0]

//通过下标更改相应索引的值
shoppingList[0] = "six eggs"

println(shoppingList)

//利用闭区间更改一系列的元素值
shoppingList[2...4] = ["Apples", "Bananas"]

println(shoppingList)

//在某个索引值添加数据项
shoppingList.insert("Maple", atIndex: 0)

//移除某一项
shoppingList.removeAtIndex(0)

//移除最后一项
shoppingList.removeLast()

//数组遍历
for item in shoppingList {
    println(item)
}

//创建并构造一个数组
var someInts = [Int]()
someInts.append(3)
someInts = []

//创建一个特定大小并且默认数据的方法
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles

//2.字典
//字典 跟数组基本类似，无非就是key:value 键值对
//语法一
var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]
//语法二
var anotherAirports: [String: String] = ["TYO": "Tokyo", "DUB": "Dublin"]
//语法三
var thirdAirports = ["TYO": "Tokyo", "DUB": "Dublin"]

//利用下标增加新的数据项
airports["LHR"] = "London"

//利用下标修改特定的值
airports["LHR"] = "London Heathrow"

//
airports.updateValue("Tokyo Hot", forKey: "TYO")

//通过下标移除键值
airports["LHR"] = nil

//通过api移除键值对
airports.removeValueForKey("DUB")

//字典的遍历
for (airportCode, airportName) in airports {
    println("\(airportCode):\(airportName)")
}

for airportCode in airports.keys {
    println("code is \(airportCode)")
}

for airportName in airports.values {
    println("name is \(airportName)")
}

//创建一个空字典
var namesOfIntegers = Dictionary<Int, String>()
var anotherNames = [Int: String]()












