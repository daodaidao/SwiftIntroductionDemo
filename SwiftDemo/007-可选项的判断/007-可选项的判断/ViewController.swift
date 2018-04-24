//
//  ViewController.swift
//  007-可选项的判断
//
//  Created by caihongguang on 2018/4/24.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        demo(x: 10, y: nil)
        
        demo3()
    }
    
    func demo3()
    {
        let oName: String? = "老王"
        //guard let 和 if let 正好相反，不在花括号里的数为有值
        guard let name = oName else { return print("姓名为 nil") }
        
        //代码执行至此， name 一定有值
        //通常如果有值，可能会有一些逻辑处理，代码比较多，用 if let就会凭空多了一层分支，guard let 降低分支层次多办法 2.0推出。
        //姓名不为空打印 name
        print(name)
        
        
    }
    
    
    
    //MARK: - if let / var 连用语法，目的就是判断值
    func demo2()
    {
        let oName: String? = "老王"
        let oAge: Int? = 10
        if oName != nil && oAge != nil
        {
            print(oName! + String(oAge!))
        }
            
            
        //if let 连用，判断对象的值是否为nil
        //if var 连用，可以对值进行修改 ， let 不能。
        //不是单纯的 if
        if var name = oName,
           let age = oAge {
            
            
            name = "JAY"
            
            //进入分支之后 name 和 age 一定有值，不需要解包
            // name 和 age 作用域仅在 {} 中
            print(name + String(age))
        }
        else{
            print("name 或者 age 为nil")
        }
            
            
      
        
        
        
        
    }
    
    //MARK: - ??
    func demo1(x: Int?, y: Int?)
    {
        /*
         ?? 是一个简单的三目
         如果有值 使用值
         如果没有值，使用??后面的值代替
         */
        print((x ?? 0) + (y ?? 0))
        
        let name : String? = "老王"
        print((name ?? "") + "你好")
        //用??可以代替 !强行解包 做非空判断，防止崩溃，比if要简洁
        // ？？操作符优先级 低 。在使用的时候最好加上 () 包一下
        
    }
    
    func demo(x: Int?,y: Int?) {
//        let x: Int? = 10
//        let y: Int? = 200
        //1.强行解包有风险
//            print(x!+y!)
        //2.使用if 判断，但是容易让代码太多，阅读起来费劲
        if x != nil && y != nil
        {
            print(x!+y!)
        }else{
            print("有空值");
        }
        
        

    }

}

