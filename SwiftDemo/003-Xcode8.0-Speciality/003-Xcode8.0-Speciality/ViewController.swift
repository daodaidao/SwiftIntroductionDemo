//
//  ViewController.swift
//  003-Xcode8.0-Speciality
//
//  Created by caihongguang on 2018/4/23.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

//  从 Xcode 8.0开始，目前所有的插件无法工作，网上有别的办法，可以另行尝试，这里说的是Xcode 8.0后自带的一些功能可以代替插件。
class ViewController: UIViewController {
    
    //在swift里取消了 预编译指令。 之前用 #pragma 要变成 MARK: xxx, warning要变成FIXME：xxxx, TODO:xxx 具体看使用场景
    
    // MARK: - 视图生命周期
    
    //<1> option + cmd + / 添加文档注释
    // MARK: 视图加载完成
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let v =  UIView(frame: CGRect(x: 0, y: 20, width: 200, height: 150))
        
        //<2> 输入color然后直接按回车 可以选颜色，点other可以用rgb或16进制
        v.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)      //TODO: 我是颜色
        
        view.addSubview(v)
        
        //<3> 图像视图 可以输入名字直接显示图像 一目了然 不用图像插件
        let iv = UIImageView(image:#imageLiteral(resourceName: "su_goods_home_new"))  //FIXME: 应该更改头像
        iv.center = view.center
        view.addSubview(iv)
    
    }
    // MARK: 视图内存警告
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

