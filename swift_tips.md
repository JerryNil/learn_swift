## Swift Tips

#### 尽量使用let，而不是var

使用`let`更安全，只有确保属性会变才使用`var`

#### 尽量使用guard，而不是if控制语句

在进行条件判断时，`guard`和`if`都可以使用，但是使用`guard`之后编译器会强制你进行`return`、`break`和`continue`

#### 避免对可选类型进行强制解包

在swift中，我们声明一个可选类型，可以使用`？`和`！`，但是我们避免使用`！`，因为隐式解包很容易导致crash，`？`只会在取值时返回。所以我们在取值的时候，更多的是使用`if let`进行可选绑定来避免crash

#### 对于可读属性和下标，我们使用隐式的getter

针对可读属性和下标，我们应该省略`get`关键字

#### 对于顶级定义，最好标明访问控制权

对于一等公民，函数、类型和变量逗需要有详细的权限控制权，默认的是`internal`，除此之外还有`private`和`public`

#### 当指定一个类型时，把冒号和标示符连接在一起

```
var numberOfPerson: Int = 12
class Person: Protocol
```

#### 只有在需要的时候明确写上self

只有属性跟函数中的参数名冲突时，才使用self，其他的情况都使用隐式的self

#### 首选struct，其次class

注意尽量不要使用class，多态可以使用协议，继承可以使用组合

#### 默认class为final

`final`表明的意思，该类不允许被继承。组合比继承更合适。

#### 能不写类型参数的就不需要写了

省略多余的类型参数让意图更清晰

#### 操作符两边留空格

```
public func --> <T: Serializable>(property: T?, inout jsonObject: JSONObject?) -> JSONObject? {
    return Serialization.convertAndAssign(property, toJSONObject: &jsonObject)
}

```

## Reference 
* [Swift style guide](https://github.com/Artwalk/swift-style-guide/blob/master/README_CN.md)