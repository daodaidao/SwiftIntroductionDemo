//
//  ViewController.swift
//  错误处理
//
//  Created by caihongguang on 2018/5/8.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let jsonString = "{\"name\": \"zhang\"]"
        let data = jsonString.data(using: .utf8)

        //反序列化  throw 抛出异常
        
        //方法一: 推荐 try?，如果解析成功，就有值，否则，为 nil
//        let json =
//            try? JSONSerialization.jsonObject(with: data!, options: [])
//        print(json)
        
        
        //方法二:强烈不推荐 try! , 如果解析成功，就有值， 否则崩溃, 有风险
//        let json =   try! JSONSerialization.jsonObject(with: data!, options: [])
//        print(json)
        
        //方法三 do {} catch{}： 处理异常,能够接受到错误，并且输出错误..推荐使用 方法1
        //但是:语法结构复杂，而且，{}里面的智能提示很不友好
        //扩展: OC中有 try catch 但几乎不用。为什么？
        //其他语言有的用try catch,
        //因为ARC开发，编译器自动添加 retain/release/autorelease ，如果用 try catch 一旦不平衡，就会出现内存泄漏
        do{
            let json3 = try JSONSerialization.jsonObject(with: data!, options: [])
            print(json3)
        }catch{
            print(error)
        }
  
        
    }

    

}

