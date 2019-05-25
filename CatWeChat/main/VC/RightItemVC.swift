//
//  RightItemVC.swift
//  CatWeChat
//
//  Created by wangyongyue on 2019/5/1.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class RightItemVC: CViewController {

   
    var m:RightItemLProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
        
        let style = Style().text("add").textColor(UIColor.black).backgroundColor(UIColor.clear)
        let rightButton = CButton(style)
       
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: rightButton)
        
        
        
        let table = CTable()
        self.view.addSubview(table)
        
        table.register([ListCell.classForCoder(),
                        DetailsCell.classForCoder(),
                        LeftCell.classForCoder(),
                        RightCell.classForCoder()])
        
        table.snp.makeConstraints { (make) in
            make.top.equalTo(64)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
        
        if let ob = m?.obArray{
            table.v_array(ob: ob)

        }
        if let ob = m?.obIndex{
            table.v_index(ob: ob)
            
        }
        if let ob = m?.obRightItem{
            rightButton.v_on(ob: ob)
            
        }

        m?.startListen()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if self.navigationController?.viewControllers.count == 1{
            self.navigationController?.tabBarController?.tabBar.isHidden = false;

        }else{
            self.navigationController?.tabBarController?.tabBar.isHidden = true;

        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if self.navigationController?.viewControllers.count == 1{
            self.navigationController?.tabBarController?.tabBar.isHidden = false;
            
        }else{
            self.navigationController?.tabBarController?.tabBar.isHidden = true;
            
        }
        
    }
}
protocol RightItemLProtocol {
    
    var obArray:Observe{get}
    var obIndex:Observe{get}
    var obRightItem:Observe{get}

    func startListen()
    
    
    
}
