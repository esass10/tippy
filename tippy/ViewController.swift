//
//  ViewController.swift
//  tippy
//
//  Created by Elliot Sasson on 12/17/19.
//  Copyright © 2019 elliotsasson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var totalLabel2: UILabel!
    
    @IBOutlet weak var totalLabel3: UILabel!
    
    @IBOutlet weak var totalLabel4: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISlider!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Float(billField.text!) ?? 0
        let tip = bill * (tipControl.value / 100.0)
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalLabel2.text = String(format: "$%.2f", total / 2.0)
        totalLabel3.text = String(format: "$%.2f", total / 3.0)
        totalLabel4.text = String(format: "$%.2f", total / 4.0)
        tipPercentageLabel.text = String(format: "%.2f", tipControl.value)
    }
}

