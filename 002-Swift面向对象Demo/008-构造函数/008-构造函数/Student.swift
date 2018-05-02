//
//  Student.swift
//  008-构造函数
//
//  Created by caihongguang on 2018/5/2.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class Student: Person {
    
    //学号
    var no: String
    
    override init () {
        print("student init")
        
        no = "001"
        
        super.init()
    }
    
    
}
