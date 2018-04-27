//
//  ViewController.swift
//  002-函数的定义
//
//  Created by caihongguang on 2018/4/27.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(sum(x: 10, y: 50))
        
//        print(sum1(num1: 30, num2: 60))
        
//        print(sum1(num1: 50, num2: 60))
        
        //测试默认值
        print(sum3())
        print(sum3(x: 10, y: 20))
        print(sum3(x: 10))
        print(sum3(y: 20))
    }
    
    // MARK: - 无返回值.在阅读第三方代码能够看懂就好
    /*
       主要用在闭包
     - 直接省略
     - ()
     - Void
     
     */
    func demo1(){
        print("哈哈")
    }
    
    // -> 这个箭头 前面是负责执行的语句 执行完传递给后面。
    func demo2() -> (){
        print("哈哈")
    }
    func demo3() -> Void{
        print("哈哈")
    }
    
    
    
    // MARK: - 函数默认值. 通常参数设置默认值，在调用的时候，可以任意组合参数，如果不指定就是默认值
    // 有了默认值 一个方法可以做很多事情，swift代码会很灵活，之前oc那个调用方法 都调用最长的
    func sum3(x: Int = 1, y: Int = 2) ->Int
    {
        return x + y
    }
    
    //MARK: - 外部参数
    // - 外部参数就是在 形参前加一个名字 （可以更明白含义）
    // - 外部参数不会影响函数内部的细节
    // - 外部参数会让外部调用方看起来更加的直观
    // - 外部参数如果使用 _, 在外部调用 会忽略形参的名字
    // 在swift中 _ 就是可以忽略任意不感兴趣的内容
    // 没有用到的 也可以用 _ 替代
    func sum2(_ x: Int, _ y: Int) -> Int {
        return x + y
    }
    
    func sum1(num1 x: Int, num2 y: Int) -> Int {
        return x + y
    }
  
    //MARK：- 函数定义
    /// 函数的定义，格式 函数名（形参列表）-> 返回值类型
    func sum(x: Int, y: Int) -> Int {
        return x + y
    }

 


}

