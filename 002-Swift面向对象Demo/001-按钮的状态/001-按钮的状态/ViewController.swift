//
//  ViewController.swift
//  001-按钮的状态
//
//  Created by caihongguang on 2018/4/27.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    /*
        枚举类型，按钮的 normal 丢失应该是一个 bug!
     
     Swift :
        - 类
        - 结构体
        - 枚举
        以上三个家伙都有构造函数，都可以有方法，整体看起来，都想原有的类！
     
        - 纯代码，在现在企业中使用比较多。
        - Xib小，布局快
     
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let btn = UIButton()
        
        //raw 原始的。使用一个值调用枚举的构造函数，创建一个枚举值。 3.0测试版没有normal
        btn.setTitle("come on", for: UIControlState(rawValue: 0))
        //现在新的版本已经有了
        btn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        btn.sizeToFit()
        
        btn.center = view.center
        
        view.addSubview(btn)
        
        
        
    }

 


}

