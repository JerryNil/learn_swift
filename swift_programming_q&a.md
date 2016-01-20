## swift programming Q&A


Q:'weak' cannot be applied to non-class type 'ButtonTappedable'

A:意思也就是说weak关键字不能用于非类的类型，value type不适用，会出现编译错误，如果是协议的情况，需要在协议的声明中显示的标记该协议只能被class遵循