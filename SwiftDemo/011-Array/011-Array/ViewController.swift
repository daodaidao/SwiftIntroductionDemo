//
//  ViewController.swift
//  011-Array
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
    
    
    // MARK: - 数组的遍历
    func demo2(){
        let array = ["1","2","30"]
        //1.按下标遍历
        for i in 0..<array.count{
            print(array[i])
        }
        print("for in 遍历")
        //2. for in 遍历
        for s in array
        {
            print(s)
        }
        //3 enum block 遍历，同时遍历下标和内容
        print("同时 遍历下标和内容")
        //远足 option + click 多按 查看
        for e in array.enumerated()
        {
            print(e.offset)
            print(e.element)
        }
        
        //4.遍历下标和内容2
        //n就是索引下标，s就是元素
        //n/s名字可以随便写
        for (nnn,sss) in array.enumerated(){
            print(nnn)
            print(sss)
            
        }
        
        print("-----反序遍历")
        //5.反序遍历
        for s in array.reversed(){
            print(s)
        }
        //6.反序遍历内容
        print("-----反序遍历内容 错误")
        //这样写 是错误写法，内容和索引不匹配
        for (n,s) in array.reversed().enumerated()
        {
            print(n)
            print(s)
        }
        print("-----反序遍历内容 正确")
        
        //正确的写法是 先枚举再反序
        for (n,s) in array.enumerated().reversed()
        {
            print(n)
            print(s)
        }
        
        
    }
    
    
    // MARK: - 数组的定义
    func demo1(){
        //自动推导结果 String ,表示数组中存放都是String
        //swift数组 里字符串不用 @
        let array = ["1","2","30"]
        print(array)
        
        //在swift基本数据类型不需要包装
        let array2 = [1,2,3,4,5]
        print(array2)
        
        let p = CGPoint(x: 10, y: 10)
        let array3 = [p]
        print(array3)
        
        //混合数组:开发中几乎不用，因为数组是靠下标索引
        //如果数组中类型不一致，自动推导的结果 [NSObject]
        //在 Swift 中还有一种类型 [AnyObject] ->任意对象 。大于NSObject
        //在 Swift 中一个类可以没有任何父类
        //let array4 = ["张三", 1,NSValue(cgPoint: p)]
        //一般想输入什么  with的话 打括号
        
    }
    
    
}

