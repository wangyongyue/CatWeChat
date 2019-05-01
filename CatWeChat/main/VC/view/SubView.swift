//
//  SubView.swift
//  CatAssemble
//
//  Created by apple on 2019/4/30.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit

class SubView: CView {

    var obArray = Observe()
    var obIndex = Observe()
    var m:Operation?
    
    func load(_ op:Operation){
        self.m = op
        self.m?.loadData(ob: self.obArray)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        
        let table = CTable()
        self.addSubview(table)
        
        table.v_array(ob: obArray)
        table.register([ListCell.classForCoder(),
                        DetailsCell.classForCoder(),
                        LeftCell.classForCoder(),
                        RightCell.classForCoder()])
        
        table.v_index(ob: obIndex)
        
        table.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.height.equalTo(0)
            
        }
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
