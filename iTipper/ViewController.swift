//
//  ViewController.swift
//  iTipper
//
//  Created by KOSMAS-DAMIANOS GIANNAKOS on 12/23/16.
//  Copyright © 2016 Klepsidra Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
  
    @IBOutlet weak var numberOfpeople: UILabel!
    @IBOutlet weak var numberOfPeopleSlider: UISlider!
    @IBOutlet weak var splitTotal: UILabel!
    
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

   
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
    
        
        
        
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    @IBAction func numberCustomers(_ sender: Any) {
        let split = self.numberOfPeopleSlider.value;
        
        numberOfpeople.text = "split"
    }

}

