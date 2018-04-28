//
//  ViewController.swift
//  007-加法计算器
//
//  Created by caihongguang on 2018/4/28.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numText1: UITextField?
    var numText2: UITextField?
    var resultLabel : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() ->(){
        
        //1.两个 textField
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        tf1.borderStyle = .roundedRect
        tf1.text = "0"
        view.addSubview(tf1)
        
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        tf2.borderStyle = .roundedRect
        tf2.text = "0"
        view.addSubview(tf2)
        
        //记录属性
        numText1 = tf1
        numText2 = tf2
        
        //2.三个label
        let l1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30))
        l1.text = "+"
        l1.textAlignment = .center
        view.addSubview(l1)
        
        let l2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 30))
        l2.text = "="
        l2.textAlignment = .center
        view.addSubview(l2)
        
        
        let l3 = UILabel(frame: CGRect(x: 240, y: 20, width: 60, height: 30))
        l3.text = ""
        l3.textAlignment = .right
        view.addSubview(l3)
        
        resultLabel = l3
        
        // 3.一个 button
        let btn = UIButton()
        btn.setTitle("计算", for: .normal)
        btn.titleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        btn.sizeToFit()
        btn.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        btn.center = view.center
        
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(calc) , for: .touchUpInside)
        
    }
    
    @objc func calc(){
       //这里比较长 要一步一步来实现 
        guard let num1 = Int(numText1?.text ?? ""),
            let num2 = Int(numText2?.text ?? "") else {
            print("必须输入数字才能计算")
            return
        }
        
        //处理结果
        resultLabel?.text = "\(num1 + num2)"
        
    }

  


}

