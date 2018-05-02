//
//  Person.swift
//  008-构造函数
//
//  Created by caihongguang on 2018/4/28.
//  Copyright © 2018年 SYJ. All rights reserved.
//

/*
 1.给自己的属性分配空间并且设置初始值
 2.调用父类构造函数之前，需要献给本类的属性设置初始值
 3.使用父类的‘构造函数’给父类的属性分配空间，初始化值
    NSObject 没有属性，只有一个成员变量 'isa'
 4.如果重载了构造函数，并且没有实现父类 init方法，系统不再提供 init() 构造函数默认是会有的！！
 - 重载后就没有了， 因为默认的构造函数，不能给本类的属性分配空间
 
 */

import UIKit


class Person: NSObject {
    
    var name: String
 
    //重写，父类有这个方法
    override init() {
        
        print("Person init")
        
        //问题:name 确实有初始值，但是所有的初始值是 zhang
        name = "zhang"
        super.init()
    }
    
    //重载，函数名相同，但是参数和个数不同
    //好处：重载可以给自己的属性从外部设置初始化！
    //提问：OC有重载吗？没有,OC的是 initWithXXX
    init(name: String){
        //使用参数的 name 设置给属性
        self.name = name
        //调用父类的构造函数
        super.init()
    }
    
    
}
