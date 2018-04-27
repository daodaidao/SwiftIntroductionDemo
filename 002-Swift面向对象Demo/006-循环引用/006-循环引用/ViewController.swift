//
//  ViewController.swift
//  006-循环引用
//
//  Created by caihongguang on 2018/4/27.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //属性就是 一个 var
    var completionCallBack: (()->())?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   //'循环'引用，单方向引用是不会产生循环引用的，
//    block 里 使用 self.  闭包对self引用，self 对闭包引用。
        
//        具体：http://www.iqiyi.com/v_19rrb58o2w.html#curid=643738500_3b3b8efd90a9f4cde90ace3cb5651b79
        
    }

    

}

