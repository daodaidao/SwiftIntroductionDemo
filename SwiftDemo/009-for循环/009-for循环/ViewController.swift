//
//  ViewController.swift
//  009-for循环
//
//  Created by caihongguang on 2018/4/24.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo2()
    }
    
    //反序遍历
    func demo2(){
        //reversed 反转
        for i in (0..<10).reversed(){
            print(i)
        }
    }
    
    //正序
//    for i in 0..<10{
//    print(i)
//    }
    
    
    
    /*
     空格大法，Swift对语法要求非常严，尤其是空格
     */
    
    func demo1(){
        //变量 i 在 [0,5) 循环
        for i in 0..<5 {
            print(i)
        }
        print("-----------")
        //变量 i 在 [0,5] 循环
        for i in 0...5 {
            print(i)
        }
        
        //范围定义是一个固定的格式
        let r1 = 0..<5
        let r2 = 0...5
        print(r1)
        print(r2)
        
    }

    func dome(){
        
        //传统的 for 在 swift 3.0 被取消
        // i++ / ++i 从3.0被取消
        // i += 1
        // i++ 和 ++i 速度上没区别，只是一个先加一个后加,现在已经没有意义
        
        
        
    }
    
    
    

}

