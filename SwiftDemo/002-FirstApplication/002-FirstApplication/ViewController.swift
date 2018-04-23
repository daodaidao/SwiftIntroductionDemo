//
//  ViewController.swift
//  002-FirstApplication
//
//  Created by caihongguang on 2018/4/23.
//  Copyright © 2018年 SYJ. All rights reserved.
//

//oc和swift的细节对比
/*
1.  OC: [[UIView alloc]initWithXXX:]
    Swift UIView(XXX:)
    类名() == alloc / init 等价
 
2.  OC: [UIColor redColor]
    Swift: UIColor.red
 
3.  访问当前对象的属性，可以不使用 'self.' , 在编译器提示的时候再加，更加体会
    建议:都不用
    原因:闭包(oc里的block) ，需要使用self.
 
 4. 没有 ';'
    ';' 目的分割语句的，在Swift 中，默认不需要
    分割语句可以用 比如写一行 let a = 10; let b =20
 5. 枚举类型
    OC: UIButtonTypeContactAdd
 Swift: .contactAdd
 
 6.#selector
    打印参数不用加 ':'
 
 7. 调试
    OC  NSLog
    Swift print
        -没有时间
        -效率比NSLog高
 
    OC里跟踪函数 __FUNTION
    Swift      #function
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1.创建一个视图
        let v = UIView(frame: CGRect(x: 0, y: 20, width: 100, height: 100))
        //设置背景颜色
        v.backgroundColor = UIColor.red
        //添加到当前视图
        view.addSubview(v)
        
        //2.创建一个按钮
        let btn = UIButton(type: .contactAdd)
        v.addSubview(btn)
        
        
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        
    }
    
    @objc func clickMe(btn: UIButton) -> () {
        print("click me")
        print(btn)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

