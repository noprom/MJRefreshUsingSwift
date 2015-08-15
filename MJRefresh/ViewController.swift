//
//  ViewController.swift
//  MJRefresh
//
//  Created by noprom on 15/8/15.
//  Copyright © 2015年 noprom. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableView:UITableView?
    var objArray = [String]()
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView = UITableView(frame: self.view.frame)
        self.view.addSubview(tableView!)
        self.tableView!.delegate = self
        self.tableView!.dataSource = self
        self.tableView!.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        self.tableView!.tableFooterView = UIView()
        
        // 初始化数组
        for (i; i<10; ++i){
            self.objArray.append("\(self.i)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel!.text = "这是第 \(self.objArray[indexPath.row]) 行"
        return cell
    }
}

