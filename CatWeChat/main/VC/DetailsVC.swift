//
//  DetailsVC.swift
//  CatAssemble
//
//  Created by apple on 2019/4/30.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit
import SnapKit
class DetailsVC: CViewController {

    var obArray = Observe()
    var obIndex = Observe()
    var m:Operation?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
       
        
        
        let table = CTable()
        self.view.addSubview(table)
        
        table.v_array(ob: obArray)
        table.register([ListCell.classForCoder(),
                        DetailsCell.classForCoder(),
                        LeftCell.classForCoder(),
                        RightCell.classForCoder()])
        
        table.snp.makeConstraints { (make) in
            make.top.equalTo(64)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
            
        }
      
        self.m?.loadData(ob: self.obArray)
        
        table.v_index(ob: obIndex)
        
        //
        //        table.v_didEvent { (model) in
        //
        ////            let a = model as! MainModel
        ////            a.eventPraise.v_on {
        ////                print(a.name)
        ////
        ////            }
        //        }
        
        
    }
    
    
}
