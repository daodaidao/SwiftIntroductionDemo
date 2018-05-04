//
//  Person.swift
//  加载百度
//
//  Created by caihongguang on 2018/5/4.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class Person: NSObject {
//    convenience 便利构造函数关键字
    var name: String?
    var age: Int = 0
    //重载构造函数
    /*
        1.遍历构造函数允许返回 nil
     正常的构造函数一定会创建对象
    ***** 判断给定的参数是否符合条件，如果不符合条件，直接返回 nil,不回创建对象，减少内存开销！
     2.只有便利构造函数中才会使用 'self.init'构造当前对象
     没有 convenience 关键字的构造函数是来负责创建对象的，而反之用来检查条件的 ，本身不负责对象的创建
     3.如果在便利函数构造函数中使用，当前对象的属性，一定要在self.init之后
     iOS开发用地少，一般用第三方框架。但是便利构造函数的特点要知道
     */
    
    convenience init?(name: String, age: Int){
        if age > 100 {
            
            return nil
        }
        
        // 使用 self 访问 name 之前， 应该调用 self.init
        // self.name = name
        // 实例化当前对象
        self.init()
        
        //执行到此 self 才允许被访问，才能够访问到对象的属性。
        self.name = name
        
    }
    
    override init(){
        //super.init()
        
//       self.init()
        
    }
    
}
