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
        // Do any additional setup after loading the view, typically from a nib.
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

