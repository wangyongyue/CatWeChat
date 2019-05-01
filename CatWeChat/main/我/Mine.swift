//
//  Mine.swift
//  CatAssemble
//
//  Created by apple on 2019/4/30.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit

class Mine: Operation {
   
    override func getViewController() -> UIViewController {
        
        
        let vc = RightItemVC()
        vc.m = self
        vc.navigationItem.title = "我的"
        vc.obIndex.v_index { (index) in
            
        
            Router.push(MineDetails().getViewController(), nil, nil)

        }
        vc.obRightItem.v_on {
            
            
        }
        
        return vc
        
    }
    override func loadData(ob:Observe) {
        
        var array = Array<Cat>()
        for i in 1...dataNum{
            
            let m = ListModel()
            m.name = "我的\(i)"
            array.append(m)
            
        }
        
        
        ob.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
        
    }
}
