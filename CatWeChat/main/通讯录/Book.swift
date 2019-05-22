//
//  Book.swift
//  CatWeChat
//
//  Created by wangyongyue on 2019/5/1.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class Book: RightItemListenr {
    override func getViewController() -> UIViewController {
        
        
        let vc = RightItemVC()
        vc.m = self
        vc.navigationItem.title = "通讯录"
       
        
        return vc
        
    }
    override func startListen(){
        
        loadData()
        
        obIndex.v_index(ob: { (index) in
            
            Router.push(MessageDetails().getViewController(), nil, nil)
            
        })
        
        
        obRightItem.v_on {
            Router.push(MessageAdd().getViewController(), nil, nil)
        }
        
        
        
    }
    
    func loadData() {
        
        var array = Array<Cat>()
        for i in 1...dataNum{
            
            let m = ListModel()
            m.name = "通讯录人员\(i)"
            array.append(m)
            
        }
        
        
        obArray.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
        
    }
}
