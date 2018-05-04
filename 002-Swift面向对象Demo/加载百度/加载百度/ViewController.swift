//
//  ViewController.swift
//  加载百度
//https://blog.csdn.net/wangjunling888/article/details/50980964
//设置支持http ats
//  Created by caihongguang on 2018/5/4.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p = Person(name: "老王", age: 108)
        print(p?.name ?? "不对")
        
        // URL的构造函数可以返回 nil
        //init?(string:String )构造函数可以返回 nil
        let url = URL(string: "http://www.baidu.com")
        
        //发起网络请求
        // - 和 OC的区别，闭包的所有参数，需要自己写， OC直接带入
        //- 如果不关心的值，可以直接 '_' 忽略
        URLSession.shared.dataTask(with: url!){ (data,_,_) in
            
//            if (error != nil)
//            {
//                print("网络请求失败")
//                return
//            }
            guard let data = data else {
                print("网络请求失败")
                return
            }
            
            //将data 转换为String
            let html = String(data: data, encoding: .utf8)
      
            print(html)
        }.resume()
        
        
        
    }

 

}

