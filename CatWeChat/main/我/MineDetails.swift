//
//  MineDetails.swift
//  CatAssemble
//
//  Created by apple on 2019/4/30.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit

class MineDetails: DetailsListenr {
    override func getViewController() -> UIViewController {
        
        let vc = DetailsVC()
        vc.m = self
        vc.navigationItem.title = "微信详情"
        
       
        return vc
        
    }
    override func startListen(){
        
        loadData()
        
        obIndex.v_index(ob: { (index) in
            
            print(index)

        })
        
        
        
    }
    func loadData() {
        
        var array = Array<Cat>()
        for i in 1...dataNum{
            
            let m = DetailsModel()
            m.name = "微信详情\(i)"
            array.append(m)
            
        }
        
        
        obArray.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
    }
}
