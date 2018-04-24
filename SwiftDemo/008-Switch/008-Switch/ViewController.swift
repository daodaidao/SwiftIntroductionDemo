//
//  ViewController.swift
//  008-Switch
//
//  Created by caihongguang on 2018/4/24.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo(num: "10")
    }

    //1.switch 可以针对任意类型的值进行分支,比oc更灵活  不局限于在整数
    //2.switch 一般不需要  break
    //3 switch 如果要多值，用 ','
    //4. 所有分支至少需要一条指令，什么都不干才用 break.
    //5. 可以加  where 具体看使用的时候，先把常用的都掌握熟练
    func demo(num:String){
        
        switch num {
        case "10","9":
            print("优秀")
        default:
            print("一般")
        }
        
    }


}

