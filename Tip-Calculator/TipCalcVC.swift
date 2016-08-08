//
//  ViewController.swift
//  Tip-Calculator
//
//  Created by Stuart Sumner - Smith  on 04/08/2016.
//  Copyright © 2016 Stuart Sumner - Smith . All rights reserved.
//

import UIKit

class TipCalcVC: UIViewController {

  // MARK: - @IBOutlets
    
    @IBOutlet weak var tipTitleView: UIView!
   
    @IBOutlet weak var tipTitleLbl: UILabel!
    
    @IBOutlet weak var billamountTextField: UITextField!
    
    @IBOutlet weak var tipPercentLbl: UILabel!

    @IBOutlet weak var tipPercentSlider: UISlider!
    
    @IBOutlet weak var tipAmountLbl: UILabel!
    
    @IBOutlet weak var totalAmountLbl: UILabel!
    
    
    
    
    // MARK: @properties
    
    
    var tipCalc = TipCalc(billAmount: 0.0, tipPercent: 0.0)
    
    
    
    // MARK : - initilise views
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipPercentValue()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
      }

   //MARK:- @IBActions
    
    @IBAction func billAmountChange(sender: AnyObject) {
      calcTip()
    }
    
    @IBAction func tipPercentChanges(sender: AnyObject) {
       
        tipPercentValue()
        calcTip()
    
    }
    
    
    // MARK: - Functions

    func calcTip () {
        tipCalc.tipPercent = Double(tipPercentSlider.value)
        tipCalc.billAmount = ((billamountTextField.text)! as NSString).doubleValue
        tipCalc.calculateTip()
        updateUI()
    }
    
    func updateUI(){
        tipAmountLbl.text = String(format: "$%0.2f", tipCalc.tipAmount)
        totalAmountLbl.text = String(format: "$%0.2f", tipCalc.totalAmount)
    
    
    }
    
    func tipPercentValue() {
        tipPercentLbl.text = "Tip: \(Int(tipPercentSlider.value * 100))%"
        
    }

    func dismissKeyboard() {
        
        view.endEditing(true)
    }

}




