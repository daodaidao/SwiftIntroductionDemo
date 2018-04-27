//
//  ViewController.swift
//  003-闭包的定义
//
//  Created by caihongguang on 2018/4/27.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
        闭包的概念
     1. 提前准备好的代码
     2. 在需要的时候执行
     3. 可以当作参数传递
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(sum(x: 10, y: 20))
        
       //1.最简单的闭包
        //() -> () 没有参数 没有返回值的函数
        let b1 = {
            print("hello")
        }
        //执行闭包
        b1()
        
        //2.带参数的闭包
        //闭包中，参数，返回值，实现代码都是写在  {} 中
        // 需要使用一个关键字 'in' 分割定义和实现
        //{ 形参列表-> 返回值类型 //实现代码}
        let b2 = { (x: Int) -> () in
            print(x)
        }
        
        b2(100)
        
        //3> 带参数/返回值的闭包
        //(Int) -> Int
        let b3 = { (x: Int) -> Int in
            return x + 250
        }
        print(b3(111))
        
    }
    
    // 使用常量记录函数的演练
    func demo(){
        // 1.定义一个常量记录函数
        //(Int, Int) -> Int
        let f = sum
        let i = 10
        // 2. 在需要的时候执行
        print(f(10,40))
    }
    
    func sum(x: Int, y: Int) -> Int {
        return x + y
    }

   

}

