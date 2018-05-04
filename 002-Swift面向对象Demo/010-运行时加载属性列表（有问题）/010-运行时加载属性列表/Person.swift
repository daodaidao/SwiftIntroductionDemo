//


import UIKit

class Person: NSObject {
    
    var name: String?
    var age: Int = 0
    var title: String?


    // 目标：【使用运行时】 获取当前类所有属性的数组
    class func propertyList() -> [String]{
        
        var count : UInt32 = 0
        
        //1.获取 类 的属性列表 返回属性列表的数组
        //&xx 可变的Uint32类型的指针
        let list =  class_copyPropertyList(self, &count)
        
        print("属性的数量 \(count)")
        
        //2.遍历数组
        for i in 0..<Int(count)
        {
            //3.根据下标获取属性
            let pty = list?[i]
            
            //获取属性的名称
            let cName = property_getName(pty!)
            
            //5.转换成String的字符串
            let name = String(utf8String: cName!)
            
            print(name)
        }
        
        // 3.释放 C 语言的对象
        free(list)
        
        return[]
    }
    

}



