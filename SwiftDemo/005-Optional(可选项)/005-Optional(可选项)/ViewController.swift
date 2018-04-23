//
//  ViewController.swift
//  005-Optional(可选项)
//
//  Created by caihongguang on 2018/4/23.
//  Copyright © 2018年 SYJ. All rights reserved.
//

//参考视频：http://www.iqiyi.com/v_19rrb510b4.html#curid=643514300_357f5278565f8e2f68d5c08d178b7f8b

//swift学习群:733534629
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
                demo()
    }
    
    
    func demo1() {
        //1.定义 y. 没有初始化
        let y: Int?
        
        //2.给常量设置数值，初始化的工作能做一次
        y = 20
        //再次修改常量会报错 Immutable value 'y' may only be initialized once
        //        y = 30
        
        //*** var 的可选值默认为 nil
        //*** let 的可选值没有默认值
        var x: Int?
        x = 10
        x = 100
    }
    
    //最常见的错误：Fatal error: Unexpectedly found nil while unwrapping an Optional value 。。 OC里为空就蹦到main里了，swift里会崩在具体行。
    //在解包的时候发现了 nil 值，    如果！强行解包发现为nil的话 不是非空的话就会崩掉。
    
    //使用场景： ？是定义用的，！是用来解包用的。 程序中要少用!号。程序员必须对每个!负责。
    func demo() {
        //1.原始的可选项定义
        //none 没有值，或者 some 某一类值
        let x: Optional = 10
        
        //2. 简单定义
        //      '?' 用来定义 y 时一个可选的 Int 类型， 可能没有值，也可能有一个整数。
        let y : Int? = 20
        //        let y : Int? = nil
        //    如果只写 let y : Int 没有值就会提示：    Constant 'y' used before being initialized 使用前要先进行初始化
        print(y)
        
        //输出结果 Optional(10) 提示这是一个可选值
        print(x)
        
        //1> 不同类型之间的值不能直接进行运算！如果没有值是 nil 不是任何类型，不能参与计算
        //        print(x + y)
        
        //2> '!' 强行解包 -从可选值中强行获取对应的非空值 如果 y 或者 x为 nil 就会崩掉。
        print(x! + y!)
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

