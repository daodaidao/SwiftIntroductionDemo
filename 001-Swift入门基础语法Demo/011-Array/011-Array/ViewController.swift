//
//  ViewController.swift
//  011-Array
//
//  Created by caihongguang on 2018/4/24.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        demo5()
    }
    // MARK:- 数组合并
    func demo5() {
        var array = ["张三","小芳","小羊"]
        let array2 = ["dao","1"]
        
        //将 array2 内容合并到 array中
        //要合并的数组 类型必须要一致  。比oc简单，灵活
        array += array2
        print(array)
        
    }
    // MARK:- 数组容量
    func demo4(){
        //定义一个数组，指定类型是 存放Int 的数组，但是没有初始化
//        var array: [Int]
//        //给数组进行初始化
//        array = [Int]()
        //以上两句代码可以合并成一句
        var array = [Int]()
        for i in 0..<8 {
            array.append(i)
            
            //数组容量会在现有基础 *2 ，可以避免每次都要分配空间。提前预分配，提高效率
            print("容量",array.capacity)
            //OC 里的 arraywithCapacity 如果初始化指定空间，可以避免插入数据时，重复分配空间，效率会提交一点点。
            
            
        }
        
    }
    
    //MARK: - 数组的增删改
    func demo3(){
        //OC中熟组分可变 NSMutableview (var) 和不可变NSArray (let)
        
        var array = ["张三","小芳","小羊"]
        //追加
        array.append("老王")
        print(array)
        //修改 ，通过下标定位
        array[0] = "🐂"
        print(array)
        
        //越界
//        array[5] = "xxx"
        
        
        //删除
        array.remove(at: 3)
        print(array)
        
        array.removeAll(keepingCapacity: true)
        
        
    }
    
    // MARK: - 数组的遍历
    func demo2(){
        let array = ["1","2","30"]
        //1.按下标遍历
        for i in 0..<array.count{
            print(array[i])
        }
        print("for in 遍历")
        //2. for in 遍历
        for s in array
        {
            print(s)
        }
        //3 enum block 遍历，同时遍历下标和内容
        print("同时 遍历下标和内容")
        //远足 option + click 多按 查看
        for e in array.enumerated()
        {
            print(e.offset)
            print(e.element)
        }
        
        //4.遍历下标和内容2
        //n就是索引下标，s就是元素
        //n/s名字可以随便写
        for (nnn,sss) in array.enumerated(){
            print(nnn)
            print(sss)
            
        }
        
        print("-----反序遍历")
        //5.反序遍历
        for s in array.reversed(){
            print(s)
        }
        //6.反序遍历内容
        print("-----反序遍历内容 错误")
        //这样写 是错误写法，内容和索引不匹配
        for (n,s) in array.reversed().enumerated()
        {
            print(n)
            print(s)
        }
        print("-----反序遍历内容 正确")
        
        //正确的写法是 先枚举再反序
        for (n,s) in array.enumerated().reversed()
        {
            print(n)
            print(s)
        }
        
        
    }
    
    
    // MARK: - 数组的定义
    func demo1(){
        //自动推导结果 String ,表示数组中存放都是String
        //swift数组 里字符串不用 @
        let array = ["1","2","30"]
        print(array)
        
        //在swift基本数据类型不需要包装
        let array2 = [1,2,3,4,5]
        print(array2)
        
        let p = CGPoint(x: 10, y: 10)
        let array3 = [p]
        print(array3)
        
        //混合数组:开发中几乎不用，因为数组是靠下标索引
        //如果数组中类型不一致，自动推导的结果 [NSObject]
        //在 Swift 中还有一种类型 [AnyObject] ->任意对象 。大于NSObject
        //在 Swift 中一个类可以没有任何父类
        //let array4 = ["张三", 1,NSValue(cgPoint: p)]
        //一般想输入什么  with的话 打括号
        
    }
    
    
}

