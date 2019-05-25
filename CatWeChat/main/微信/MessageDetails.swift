//
//  MessageDetails.swift
//  CatAssemble
//
//  Created by apple on 2019/4/30.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit

class MessageDetails: Operation,DetailsProtocol {

    var obArray:Observe = Observe()
    var obIndex:Observe = Observe()
    
    
    override func getViewController() -> UIViewController {

        let vc = DetailsVC()
        vc.m = self
        vc.navigationItem.title = "微信详情"
      
        return vc
        
    }
    
    func startListen(){
        
        loadData()
        
        obIndex.v_index(ob: { (index) in
            
            print(index)
            
        })
        
        
        
    }
    
    func loadData() {
        
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
        
        
        obArray.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
    }
}
