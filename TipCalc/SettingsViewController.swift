//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by LeRoy, David on 3/12/17.
//  Copyright © 2017 LeRoy, David. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var defaultTipSegmentedControl: UISegmentedControl!
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let defaultTipPercentage = defaults.object(forKey: "defaultTipPercentage") as? Int ?? 0
        
        defaultTipSegmentedControl.selectedSegmentIndex = defaultTipPercentage
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveDefaultTipPercentage(_ sender: Any) {
        let defaultTip = defaultTipSegmentedControl.selectedSegmentIndex
        let defaults = UserDefaults.standard
        defaults.set(defaultTip, forKey: "defaultTipPercentage")
        defaults.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
