//
//  LeftCell.swift
//  CatWeChat
//
//  Created by wangyongyue on 2019/5/1.
//  Copyright © 2019 wangyongyue. All rights reserved.
//

import UIKit

class LeftCell: TableTemplate {

    var ob = Observe()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let label = CLabel(Style().backgroundColor(UIColor.white).textColor(UIColor.black).font(UIFont.systemFont(ofSize: 15)))
        self.contentView.addSubview(label)
        
        let deLabel = CLabel(Style().text("接收方").textColor(UIColor.black).font(UIFont.systemFont(ofSize: 15)))
        self.contentView.addSubview(deLabel)
        
        
        let line = CView(Style().backgroundColor(UIColor.gray))
        self.contentView.addSubview(line)
        
       
        
        deLabel.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(12)

            
        }
        label.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(deLabel.snp_rightMargin).offset(12)
            
        }
        line.snp.makeConstraints { (make) in
            make.top.equalTo(deLabel.snp_bottomMargin).offset(10)
            make.left.equalTo(12)
            make.right.equalTo(-12)
            make.bottom.equalTo(-12)
            make.height.equalTo(0.2)
            
            
        }
        
        label.v_text(ob: ob)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    override func setModel(_ amodel: Cat) {
        super.setModel(amodel)
        if amodel is LeftModel{
            let a = amodel as! LeftModel
            
            ob.v_text { () -> String? in
                
                return a.name
            }
            
            
            
            
        }
    }
    
    
}


class LeftModel: Cat {
    override init() {
        super.init()
        v_palm = "LeftCell"
    }
    var name:String?
    var eventPraise = Observe()
    
}
