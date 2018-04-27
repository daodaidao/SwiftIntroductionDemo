//
//  ViewController.swift
//  013-tableView
//
//  Created by caihongguang on 2018/4/27.
//  Copyright © 2018年 SYJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    //MARK: - UITableViewDataSource
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //精通oc的 换swift 只需要稍稍适应下语法就很快上手了
        //oc里有指针什么的 内存概念还比较清晰.
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        cell.textLabel?.text = "hello ~~~~ \(indexPath.row)"
        
        return cell
        
    }
    
    
    func setupUI(){
        // 1.创建表格
        let tv = UITableView(frame: view.bounds, style: .plain)
        // 2.添加到视图
        view.addSubview(tv)
        
        //3.注册可重用
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        //4.设置数据源
        tv.dataSource = self
        
        
        
        
        
        
    }
    


}

