//
//  BookDetails.swift
//  CatWeChat
//
//  Created by wangyongyue on 2019/5/1.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class BookDetails: DetailsListenr {
    override func getViewController() -> UIViewController {
        
        let vc = DetailsVC()
        vc.m = self
        vc.navigationItem.title = "联系人详情"
    
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
            m.name = "联系人\(i)"
            array.append(m)
            
        }
        
        
        obArray.v_array(true, v: { () -> Array<Cat>? in
            
            return array
        })
    }
}
