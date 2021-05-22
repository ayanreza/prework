//
//  ViewController.swift
//  Prework
//
//  Created by Ayan Reza on 5/6/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    // code to create slider
    @IBAction func slider(_ sender: Any) {
    }
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    //updates label based on slider position
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        let current_tip_value = Int(round(sender.value))
        
        sliderLabel.text = "\(current_tip_value)"
    }
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Tip Calculator"
    }

    @IBAction func calculateTip(_ sender: UISlider) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tip = bill * Double(0.01 * round(sender.value))
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
   
    
    
}

