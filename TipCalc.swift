//
//  TipCalc.swift
//  Tip-Calculator
//
//  Created by Stuart Sumner - Smith  on 07/08/2016.
//  Copyright © 2016 Stuart Sumner - Smith . All rights reserved.
//

import Foundation


class TipCalc {
    
    private var _billAmount = 0.0
    private var _tipPercent = 0.0
    private var _tipAmount = 0.0
    private var _totalAmount = 0.0
    
    
    
    
    var billAmount: Double {
        
       get{
        
        return _billAmount
        
        } set{
            _billAmount = newValue
        
        
        }


}

    var tipPercent: Double {

        get{
          
         return _tipPercent
            
            
            
        } set{
            
            _tipPercent = newValue
        
        }
        
        
    }
    
        var tipAmount: Double {
         return _tipAmount
        
        }
        
    
    var totalAmount: Double {
        return _totalAmount
    }


init(billAmount: Double , tipPercent: Double) {
    
    self.billAmount = billAmount
    self.tipPercent = tipPercent
}

    func calculateTip () {
     
        _tipAmount = billAmount * tipPercent
        _totalAmount = tipAmount + billAmount
    }

}
