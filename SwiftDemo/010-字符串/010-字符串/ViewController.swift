//
//  ViewController.swift
//  010-字符串
//
//  Created by caihongguang on 2018/4/24.
//  Copyright © 2018年 SYJ. All rights reserved.
//http://www.iqiyi.com/v_19rrb57voo.html#curid=643717700_529a0ab2d04b6d1de0baa44ab0ed11e6
// 具体使用的时候用最新的 api . 字符串常用的一些 ，欢迎大家一起提供和提出问题

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        demo4()
        
    }
    //MARK: - 字符串的字串
    func demo4() {
        //建议： 一般使用 NSString 作为中转，因为Swift取子串的方法一直在优化
        let str = "我们一起去飞"
        //1. NSString
        let ocStr = str as NSString
        let s1 = ocStr.substring(with: NSMakeRange(2, 3))
        print(s1)
        
        //2. String 的3.0方法
//        let r = 0..<5
        //str.substring(with:xxx)
        //startIndex position == 0
        print(str.startIndex)
        //endIndex postion == str.length
        print(str.endIndex)
        
        //4.0废弃
        str.substring(from: "我们".endIndex)
        
        

        
    }
    
    
    //MARK: - 格式化
    func demo3() -> (){
        let h = 8
        let m = 9
        let s = 6
        
        let dateStr = "\(h):\(m):\(s)"
        print(dateStr)

        //使用格式字符串格式化
        let dateStr1 = String(format: "%02d:%02d:%02d", h,m,s)
        print(dateStr1)

    }
    
    //MARK: - 拼接 stringwithformat:xxx
    func demo2() ->(){
        let name = "老王"
        let age = 10
        
        let title: String? = "xxx"
        
        let point = CGPoint(x: 10, y: 20)
        // 格式 \(变量/常量)
        //拼接字符串注意可选项 Optional ，用 ?? 来解包
        let str = "\(name) \(age) \(title ?? "" ) \(point)"
        print(str)
    }
    
    //MARK:字符串的长度
    func demo1(){
        let str = "hello world你好"
        
        //返回指定编码的对应的字节数量。
        //UTF8 的编码，每个汉字是 3个字节
        print(str.lengthOfBytes(using: .utf8))
        
        //2.字符串长度
        print(str.count)
        
        //3.使用 NSString 中转
        // str as NSString
        //oc 写法 (UITableViewCell)[table de...]
        //swift 中可以使用 '值 as 类型' 类型转换
        //先大概有个印象 as 是用来做类型转换
        let ocStr = str as NSString
        
    }
    
    
    
    
    // MARK: -字符串的遍历
    func demo(){
        let str = "我要飞的更高"
        
        //String 是一个结构体
        //NSString 是一个类，继承NSObject，不支持以下方式遍历
        //characters 4.0都过期
        for c in str.characters{
            print(c)
        }
      
        
    }
 

}

