//
//  Found.swift
//  CatWeChat
//
//  Created by wangyongyue on 2019/5/1.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class Found: Operation, RightItemLProtocol {
    
    
    var obArray:Observe = Observe()
    var obIndex:Observe = Observe()
    var obRightItem = Observe()
    override func getViewController() -> UIViewController {
        
        
        let vc = RightItemVC()
        vc.m = self
        vc.navigationItem.title = "发现"
       
        
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
            
            let m = ListModel()
            m.name = "发现\(i)"
            array.append(m)
            
        }
        
        
        obArray.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
        
    }
}

