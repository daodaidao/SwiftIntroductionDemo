//
//  ViewController.swift
//  009-构造函数(KVC)
//
//  Created by caihongguang on 2018/5/2.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let p = Person(dict: ["name":"老张" as AnyObject, "age": 109 as AnyObject as AnyObject])
        print(p.name)
        print(p.age)
//http://www.iqiyi.com/v_19rrb41wfs.html#curid=643841300_63158a8fe23702f39b1520875bfe9184
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

