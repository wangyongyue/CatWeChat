//
//  DetailsCell.swift
//  CatAssemble
//
//  Created by apple on 2019/4/30.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit

class DetailsCell: TableTemplate {

    var ob = Observe()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let label = CLabel(Style().backgroundColor(UIColor.white).textColor(UIColor.black).font(UIFont.systemFont(ofSize: 15)))
        self.contentView.addSubview(label)
        
        let deLabel = CLabel(Style().text("消息内容").textColor(UIColor.black).font(UIFont.systemFont(ofSize: 15)))
        self.contentView.addSubview(deLabel)
        
        
        let line = CView(Style().backgroundColor(UIColor.gray))
        self.contentView.addSubview(line)
        
        label.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.left.equalTo(12)
            
        }
        
        deLabel.snp.makeConstraints { (make) in
            make.top.equalTo(0)
            make.right.equalTo(-12)
            
        }
        line.snp.makeConstraints { (make) in
            make.top.equalTo(deLabel.snp_bottomMargin).offset(10)
            make.left.equalTo(12)
            make.right.equalTo(-12)
            make.bottom.equalTo(-12)
            make.height.equalTo(1)

            
        }
        
        label.v_text(ob: ob)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    override func setModel(_ amodel: Cat) {
        super.setModel(amodel)
        if amodel is DetailsModel{
            let a = amodel as! DetailsModel
            
            ob.v_text { () -> String? in
                
                return a.name
            }
           
            
            
            
        }
    }
    
    
}


class DetailsModel: Cat {
    override init() {
        super.init()
        v_palm = "DetailsCell"
    }
    var name:String?
    var eventPraise = Observe()
    
}
