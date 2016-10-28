//
//  ViewController.swift
//  TipCalculator
//
//  Created by Jacopo Nasi on 13/10/2016.
//  Copyright © 2016 Jacopo Nasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var customTipPercentLabel1: UILabel!
    @IBOutlet weak var customTipPercentageSlider: UISlider!
    @IBOutlet weak var tip15Label: UILabel!
    @IBOutlet weak var total15Label: UILabel!
    @IBOutlet weak var customTipPercentLabel2: UILabel!
    @IBOutlet weak var tipCustomLabel: UILabel!
    @IBOutlet weak var totalCustomLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //apertura immediata del tastierino (simula click utente)
        inputTextField.becomeFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTIP(_ sender: AnyObject) {
        let inputString=inputTextField.text
        let sliderValue=NSDecimalNumber(integer: Int(customTipPercentageSlider.value))
        let customPercent=sliderValue/decimal100
        
        if sender is UISlider {
            customTipPercentLabel1.text=NSNumberFormatter.localizedStringFromNumber(customPercent, numberStyle: NSNumberFormatterStyle.PercentStyle)
        }
    }
}

