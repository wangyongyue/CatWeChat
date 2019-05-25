//
//  FoundDetails.swift
//  CatWeChat
//
//  Created by wangyongyue on 2019/5/1.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class FoundDetails: Operation,DetailsProtocol {
    
    var obArray:Observe = Observe()
    var obIndex:Observe = Observe()
    
    override func getViewController() -> UIViewController {
        
        let vc = DetailsVC()
        vc.m = self
        vc.navigationItem.title = "发现详情"
        
      
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
            
            let m = DetailsModel()
            m.name = "发现详情\(i)"
            array.append(m)
            
        }
        
        
        obArray.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
    }
}
