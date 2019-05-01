//
//  MessageDetails.swift
//  CatAssemble
//
//  Created by apple on 2019/4/30.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit

class MessageDetails: Operation {

    override func getViewController() -> UIViewController {

        let vc = DetailsVC()
        vc.m = self
        vc.navigationItem.title = "微信详情"
       
        vc.obIndex.v_index { (index) in
            
            print(index)
        }
        return vc
        
    }
    override func loadData(ob:Observe) {
        
        var array = Array<Cat>()
        for i in 1...dataNum{
            
            if i % 2 == 0{
                
                let m = LeftModel()
                m.name = "回答我\(i)"
                array.append(m)
                
            }else{
                let m = RightModel()
                m.name = "不想理你\(i)"
                array.append(m)
            }
           
            
        }
        
        
        ob.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
    }
}
