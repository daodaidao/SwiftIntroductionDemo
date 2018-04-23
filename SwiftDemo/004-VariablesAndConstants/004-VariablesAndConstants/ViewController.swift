//
//  ViewController.swift
//  004-VariablesAndConstants
//
//  Created by caihongguang on 2018/4/23.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func demo3 () {
        //关于 var和let的选择
        //不可变的会更安全，开发的时候都先使用let,需要改变的时候再改成var

//        Variable 'x' was never mutated; consider changing to 'let' constant
        var x = 10
        let y = 20
        print(x+y)
        
        let v = UIView()
        //仅仅修改v的属性 ，并没有修改v的指针地址 所以用 let
        v.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    }
    
    func demo2 () {
        //指定变量或者常量类型可以 let x: 类型 = 值
        //可以这样写，但是极少指定类型，通常都是自动推导
        let x: Double = 10
        let y = 100.5
        
        print(x + y)

    }
    
    
    //1.定义变量 var
    //  常量 let , 定义之后，不能修改
    //2.自动推导，变量/常量的类型会根据右侧的代码执行结果，推导对应的类型
    //热键:option + clcik
    //3.在Swift 中对类型要求异常严格
    //  任何不同类型的数据之间，不允许直接运算
    //不会做任何默认的隐式转换。所有类型确定，都由程序员负责!
    //4.在Swift中，不存在基本数据类型，都是结构体!
    
    
    func demo1 () {
        let x = 10
        let y = 10.5
        //1.将 y转换成整数
        //OC 中的写法(int)y  类型强转
        //swift 中 Int() '结构体'的构造函数
        print(x + Int(y))
        
    }
    
    
    func demo (){
        
        //整数: Int(OC中NSInteger类似)
        var x = 10
        x = 20
        //小数:Double 精度高 (OC中的CGFloat)
        let y = 10.5
        print(x)
        print(y)
        
        let v = UIView()
        print(v)
        
    }
    

}

