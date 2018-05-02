//
//  ViewController.swift
//  008-构造函数
//
//  Created by caihongguang on 2018/4/28.
//  Copyright © 2018年 SYJ. All rights reserved.
//http://www.iqiyi.com/v_19rrb58h4w.html#curid=643747500_91d5fd0c346320cf44240c9a50bf8307   
// 基础可以多看看
import UIKit
/*
在swift里，默认同一个项目中(同一个命名空间下)，所有的类都是共享的，可以直接访问，不需要 import
 所有对象的属性 var ,也可以直接访问到
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //实力化 person
         //()-> alloc / init
        // swift中 对应一个函数  init()构造函数，作用：给成员变量分配空间，初始化成员变量
        //在swift中，所有类都默认有一个命名空间。
        //OC定义类的时候会有前缀。
        
        
        //swift中对应一个函数 init()构造函数。 作用：给成员变量分配空间，初始化成员变量
//         let p = Person()
//
//          print(p.name)
        
        let s = Student(name: "老王", no: "010")
        
        print(s.name + "-----" + s.no)
    }
 
    //NSObject Founction只有协议 objc有成员变量

}

