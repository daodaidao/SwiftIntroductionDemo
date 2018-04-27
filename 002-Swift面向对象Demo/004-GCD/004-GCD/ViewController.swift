//
//  ViewController.swift
//  004-GCD
//
//  Created by caihongguang on 2018/4/27.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    func demo() -> (){
        //尾随闭包
        DispatchQueue.global().async {
            DispatchQueue.main.async(execute: )
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //‘尾’随闭包
        // 如果函数的最后一个参数是闭包，函数参数可以提前结束，最后一个参数直接使用 {} 包装闭包的代码
        
        //关于尾随闭包 要能看懂，能够慢慢编写，大多数xcode智能提示
        loadData(){(result) in
            print(result)
        }
        
//        loadData{ (result) in
//            print("获取新闻数据 \(result)")
//        }
        
    }
    
    //闭包的应用场景和OC的block完全一致
    //看官方文档和最新的 WWDC 然后搜关键字，有文档幻灯片 视频
    //completion 猥琐闭包 有 闭合的 )括号。省略后只有 {}包装闭包代码
    func loadData(completion: (_ result: [String])->()) ->()  {
        
        //休眠 睡一秒
        Thread.sleep(forTimeInterval: 1.0)
        //获得结果
        let json = ["头","ba","网络数据"]

        completion(json)

        //将任务添加到队列，指定执行任务的函数
        //翻译 '队列' 调度任务(block/闭包) 以 同步/异步 的方式执行
        DispatchQueue.global().async {
            print("耗时操作 \(Thread.current)")

                //主队列回调
                DispatchQueue.main.async(execute:{
                    print("主线程更新 UI")
                })

        }
        
       
        
        
    }
 


}

