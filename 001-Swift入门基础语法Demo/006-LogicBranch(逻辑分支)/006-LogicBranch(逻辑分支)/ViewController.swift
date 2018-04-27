//
//  ViewController.swift
//  006-LogicBranch(逻辑分支)
//
//  Created by caihongguang on 2018/4/23.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo1()
    }

    // MARK: - 三目
    func demo1(){
        let x = 10
        //三目语法和OC一样
        x > 5 ? print("大了") : print("小了")
        
        //分享，有印象就行
        //在 swift 里  '()' 表示空执行，表示什么都没执行
        x > 5 ? print("大了") : ()
        
    }
    
    //简单的分支
    func demo(){
        let x = 10
        /*
         1.条件不需要 ()
         2.语句必须有 ()
         - 很多公司的代码规范中，禁止不使用{}
         
         */
        
        if x > 5 {
            print("大了")
        }else{
            //编译器变异的时候，会做语法检查，所以条件不会进来的时候  会给黄色警告
            print("小了")
        }
        
    }

}

