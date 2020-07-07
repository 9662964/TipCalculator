//
//  ViewController.swift
//  TipCalculator
//
//  Created by iljoo Chae on 7/6/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class tipCalculatorViewController: UIViewController {
    @IBOutlet weak var totalBillAmountLabel: UILabel!
    @IBOutlet weak var tipRatioSign: UILabel!
    @IBOutlet weak var dividedBySign: UILabel!
    @IBOutlet weak var tipRatioLabel: UILabel!
    @IBOutlet weak var divideByLabel: UILabel!
    @IBOutlet weak var totalAmountTextField: UITextField!
    @IBOutlet weak var calculateBtnLabel: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var stepper: UIStepper!
    
    var tipRatio:Float = 0.0
    var billAmount: String = ""
    var people: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViewSetting()
    }
    
    func initViewSetting() {
        stepper.wraps = true
        stepper.autorepeat = true
        divideByLabel.text = "2.0 people"
        tipRatioLabel.text = "5 %"
    }
    
    //https://www.ioscreator.com/tutorials/slider-ios-tutorial
    @IBAction func tipRatioSliderChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        tipRatioLabel.text = "\(currentValue) %"
        tipRatio = Float(currentValue)
    }
    
    //https://www.ioscreator.com/tutorials/stepper-ios-tutorial
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        //divideByLabel.text = String((sender.value).description)
        divideByLabel.text = "\((sender.value).description) people"
        people = Float((sender.value).description) ?? 2.0
    }
    
    @IBAction func resetBtnTapped(_ sender: Any) {
        
        resultLabel.text = ""
        totalAmountTextField.text = ""
        tipSlider.value = 0
        stepper.value = 0
        divideByLabel.text = "2 people"
        view.backgroundColor = .white
    }
    
    @IBAction func calculateBtnTapped(_ sender: Any) {
        guard let billAmount = totalAmountTextField.text else {return}
        let myValue = (billAmount as NSString).floatValue
        
        resultLabel.text = tipController.shared.calculateTip(tipRatio: tipRatio, amount: myValue, people: people)
        resultViews()
    }
    
    func resultViews() {
        if tipRatio < 10.0 {
            self.view.backgroundColor = .lowRed
        } else if  10.0 < tipRatio && tipRatio < 20.0 {
            self.view.backgroundColor = .purpleAccent
        } else if 20.0 < tipRatio && tipRatio < 30.0 {
            self.view.backgroundColor = .greenAccent
        }else{
            self.view.backgroundColor = .greatGreen
        }
    }
}


