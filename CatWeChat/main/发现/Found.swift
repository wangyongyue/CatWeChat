//
//  Found.swift
//  CatWeChat
//
//  Created by wangyongyue on 2019/5/1.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class Found: Operation {
    override func getViewController() -> UIViewController {
        
        
        let vc = RightItemVC()
        vc.m = self
        vc.navigationItem.title = "发现"
        vc.obIndex.v_index { (index) in
            
            Router.push(FoundDetails().getViewController(), nil, nil)

            
        }
        vc.obRightItem.v_on {
            
            Router.push(MessageAdd().getViewController(), nil, nil)

        }
        
        return vc
        
    }
    override func loadData(ob:Observe) {
        
        var array = Array<Cat>()
        for i in 1...dataNum{
            
            let m = ListModel()
            m.name = "发现\(i)"
            array.append(m)
            
        }
        
        
        ob.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
        
    }
}

