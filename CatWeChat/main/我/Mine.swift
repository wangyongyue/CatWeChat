//
//  Mine.swift
//  CatAssemble
//
//  Created by apple on 2019/4/30.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit

class Mine: Operation, RightItemLProtocol {
    
    
    var obArray:Observe = Observe()
    var obIndex:Observe = Observe()
    var obRightItem = Observe()
   
    override func getViewController() -> UIViewController {
        
        
        let vc = RightItemVC()
        vc.m = self
        vc.navigationItem.title = "我的"
       
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
            m.name = "我的\(i)"
            array.append(m)
            
        }
        
        
        obArray.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
        
    }
}
