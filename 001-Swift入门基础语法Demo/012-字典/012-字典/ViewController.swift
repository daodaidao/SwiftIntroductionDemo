//
//  ViewController.swift
//  012-字典
//
//  Created by caihongguang on 2018/4/26.
//  Copyright © 2018年 SYJ. All rights reserved.
//  http://www.iqiyi.com/v_19rrb57vg0.html#curid=643718300_9cf48af5f7658161388bc765b9ef54ce视频里是3.0的讲解，有的地方不对，
//具体参考 ：https://www.cnblogs.com/liYongJun0526/p/7543173.html  swift 4.0字典基本使用

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        demo1()
        
    }

    //4.合并
    func demo4(){
        
    }
    
    //1.遍历
    func demo3(){
        
    }
    
    //1.增删改
    func demo2(){
        
    }
    
    //1.定义
    func demo1(){
        //OC 定义字典用 {} swift 用 []
        let dict = ["name":"张", "age": "10"]
        print(dict)
        
        var dict2 = ["name":"sunfusheng", "age":20, "blog":"sunfusheng.com"] as [String : Any]
        
        
        print(dict2)
        
    }
    
    


}

