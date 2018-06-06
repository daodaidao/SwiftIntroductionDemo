//https://www.cnblogs.com/daxueba-ITdaren/p/6053510.html
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
        
        
        //4.判断字符串
        //(1).hasPrefix 方法用来判断字符串是否以某一指定字符串开头
        //以下将判断字符串 a 是否 以 H  Hel Hele开头
        
        var hello = NSString(string: "Hello")
        //判断字符串 Hello 是否以 H 开头
        if (hello.hasPrefix("H")){
            print("Hello 字符串是以 H 开头的")
        }else{
            print("Hello 字符串不是以H开头的")
        }
        
        //（2）hasSuffix(_:)方法正好和hasPrefix(_:)方法相反，它是用来判断字符串是否以某一指定字符串结尾的，其语法形式如下：
        //以下将判断字符串a是否以"o"、"Hello"、"allo"结尾。
        if (hello.hasSuffix("o")){
            print("hello 字符串是以o结尾的")
        }else{
            print("hello 字符串不是以o结尾的")
        }
        
        var a = NSString(string: "Hello")
        var b = NSString(string: "hello")
        var c = NSString(string: "Swift")
        var d = NSString(string: "Hello")

         //(3) isEqual(to:)方法是用来判断字符串是否相等的，其语法形式如下：
        if(a.isEqual(to: b as String)){
            print("a 、b两个字符串相等")
        }else {
            print("a 、b两个字符串不相等")
        }
        
        if(a.isEqual(to: d as String)){
            print("a 、d两个字符串相等")
        }else {
            print("a 、d两个字符串不相等")
        }

        
        
        
        
        
        //不经常用的
     
        //比较字符串 1. 使用caseInsensitiveCompare(_:)方法对字符串进行比较
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
        
        //2， 区分大小写比较
        print(a.compare(b as String).rawValue)
        print(a.compare(c as String).rawValue)
        print(b.compare(a as String).rawValue)
//        -1
//        -1
//        1
        
        //和compare(_:)方法实现的功能类似，它是对字符串进行比较，但是它比compare(_:)方法多了一个mask参数。该参数可以用来指定一个选项标记（这个标记可以作为字符串比较的条件） 条件参照文件顶部链接。caseInsensitive是不区分大小写比较
        print(a.compare(b as String, options: NSString.CompareOptions.caseInsensitive))
        
        //（3）compare(_:options:range:)方法和compare(_:options:)方法的功能类似，但是它比compare(_:options:)方法多了一个rangeOfReceiverToCompare参数，此参数可以用来对比较范围进行设置。其语法形式如下：
        
        print(a.compare(b as String, options: NSString.CompareOptions.caseInsensitive, range: NSMakeRange(1, 3)).rawValue)
        
        //3.本地化比较（应该是跟 比如简体中文，就是 zh_CN
//        ■比如美式英语，就是 en_US  有关系）
//        对于本地化比较在NSString中提供了3种方法，分别为：localizedCaseInsensitiveCompare(_:)、localizedStandardCompare(_:)和localizedCompare(_:)。
        

        
        
    }

  
}

