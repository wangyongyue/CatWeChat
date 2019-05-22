//
//  Message.swift
//  CatAssemble
//
//  Created by apple on 2019/4/30.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit

class Message: RightItemListenr {

    override func getViewController() -> UIViewController {
   
        let vc = RightItemVC()
        vc.m = self
        vc.navigationItem.title = "信息列表"
       

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
            m.name = "信息\(i)"
            array.append(m)
            
        }
        
        
        obArray.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
        
    }
}
