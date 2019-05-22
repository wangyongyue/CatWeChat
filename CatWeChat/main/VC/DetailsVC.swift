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

    
    var m:DetailsListenr?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
       
        
        
        let table = CTable()
        self.view.addSubview(table)
        
       
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
      
        if let ob = m?.obArray{
            table.v_array(ob: ob)
            
        }
        if let ob = m?.obIndex{
            table.v_index(ob: ob)

        }
        
        m?.startListen()
    }
    
}
class DetailsListenr:Operation {
    
    var obArray = Observe()
    var obIndex = Observe()
    
    func startListen(){}
    
}
