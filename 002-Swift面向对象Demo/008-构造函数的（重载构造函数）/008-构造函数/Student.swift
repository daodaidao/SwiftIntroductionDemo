//
//  Student.swift
//  008-构造函数
//
//  Created by caihongguang on 2018/5/2.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class Student: Person {
    var no: String
    init(name: String,no: String){
        self.no = no
        //调用父类方法，给name 初始化
        super.init(name: name)
        
    }
    
    
}
