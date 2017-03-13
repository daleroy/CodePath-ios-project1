//
//  ViewController.swift
//  TipCalc
//
//  Created by LeRoy, David on 3/11/17.
//  Copyright © 2017 LeRoy, David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentSegmentedControl: UISegmentedControl!

    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let defaultTipPercentage = defaults.object(forKey: "defaultTipPercentage") as? Int ?? 0
        
        tipPercentSegmentedControl.selectedSegmentIndex = defaultTipPercentage

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tipIndex = tipPercentSegmentedControl.selectedSegmentIndex
        let tipAmounts = [0.18, 0.2, 0.25]
        let tipAmount = bill * tipAmounts[tipIndex]
        let totalAmount = bill + tipAmount
        
        tipLabel.text = String(format: "$%.2f",tipAmount)
        totalLabel.text = String(format: "$%.2f", totalAmount)
    }
}

