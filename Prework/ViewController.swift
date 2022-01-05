//
//  ViewController.swift
//  Prework
//
//  Created by Saiman Tamang on 1/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //gets the initial bill Amount from input in bill amount text field
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        //calculates the tip based on percent selection and amount of the bill
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        //add bill with tip included as total
        let total = bill + tip
        //updates the value in tipAmountLabel with tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //updates the value in totalLabel with total bill
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

