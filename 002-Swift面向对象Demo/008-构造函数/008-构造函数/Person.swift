//
//  Person.swift
//  008-构造函数
//
//  Created by caihongguang on 2018/4/28.
//  Copyright © 2018年 SYJ. All rights reserved.
//

/*
 1.给自己的属性分配空间并且设置初始值
 2.使用父类的‘构造函数’给父类的属性分配空间，初始化值
    NSObject 没有属性，只有一个成员变量 'isa'
 */

import UIKit

//Class 'Person' has no initializers
//Person 类没有‘初始化器’s,构造函数，可以有多个，默认的是 init
class Person: NSObject {
    
    var name: String
    
    //  override 重写关键字
    override init() {
        
        print("Person init")

        //oc 实例化过程是先走super，然后再给值，会比swift多一个步骤。所以在底层改了一些东西，宣称比oc快
        name = "zhang"
        //        Property 'self.name' not initialized at super.init call
        //提示给 self.name初始化-》分配空间 ，设置初始值！
        super.init()
        
        
        
    }
    
    
}
