//
//  MineDetails.swift
//  CatAssemble
//
//  Created by apple on 2019/4/30.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit

class MineDetails: Operation {
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
            
            let m = DetailsModel()
            m.name = "微信详情\(i)"
            array.append(m)
            
        }
        
        
        ob.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
    }
}
