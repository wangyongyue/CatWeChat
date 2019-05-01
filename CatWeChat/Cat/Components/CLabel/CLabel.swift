//
//  CLabel.swift
//  CatFlow
//
//  Created by apple on 2019/3/14.
//  Copyright © 2019 wyy. All rights reserved.
//

import UIKit

class CLabel: UILabel {

    //{{ msg }}
    func v_text(ob:Observe){
        
        ob.setupObserve {
            self.text = ob.v_text
        }
        
    }
    //v-bind
    func v_bind(ob:Observe){
        ob.setupObserve {

            if let dic = ob.v_blind{
                self.setValuesForKeys(dic)
            }
        }
        
    }
    //v-if
    func v_if(ob:Observe){
        
        ob.setupObserve {
            
            if let v = ob.v_if{
                self.isHidden = v
            }
        }
        
    }

}
