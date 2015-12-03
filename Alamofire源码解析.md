## Alamofire源码解析

#### Part-1 Manager.swift

```
public static let sharedInstance: Manager = {
        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        configuration.HTTPAdditionalHeaders = Manager.defaultHTTPHeaders

        return Manager(configuration: configuration)
}()
```
上述是个单例，其实一开始的时候没看懂`{}()`这个是神马玩意，只知道`sharedInstance`是个存储型属性，而且还是一个类型常量属性。

然后去stackoverflow上面搜了一下，[官方文档解释](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html#//apple_ref/doc/uid/TP40014097-CH18-ID231)里面有一段`Setting a Default Property Value with a Closure or Function`解释。



