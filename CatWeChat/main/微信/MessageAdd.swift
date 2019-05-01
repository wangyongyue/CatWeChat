//
//  MessageAdd.swift
//  CatWeChat
//
//  Created by wangyongyue on 2019/5/1.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class MessageAdd: Operation {
    override func getViewController() -> UIViewController {
        
        let vc = DetailsVC()
        vc.m = self
        vc.navigationItem.title = "添加"
        
        vc.obIndex.v_index { (index) in
            
            print(index)
        }
        return vc
        
    }
    override func loadData(ob:Observe) {
        
        var array = Array<Cat>()
        for i in 1...3{
            
            let m = DetailsModel()
            m.name = "添加what"
            array.append(m)
            
        }
        
        
        ob.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
    }
}
