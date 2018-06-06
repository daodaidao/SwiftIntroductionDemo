//
//  ViewController.swift
//  010-字符串比较
//
//  Created by caihongguang on 2018/6/6.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var a = NSString(string: "Hello")
        var b = NSString(string: "hello")
        var c = NSString(string: "Swift")
        
        //比较字符串 使用caseInsensitiveCompare(_:)方法对字符串进行比较
        print(a.caseInsensitiveCompare(b as String).rawValue)
        print(a.caseInsensitiveCompare(c as String).rawValue)
        print(c.caseInsensitiveCompare(a as String).rawValue)
        
        /* 运行结果
             0
             -1
             1
         q  orderedAscending（-1）：左操作数小于右操作数。
         q  orderedSame（0）：两个操作数相等。
         q  orderedDescending（1）：左操作数大于右操作数。
         
         */
        
    }

  
}

