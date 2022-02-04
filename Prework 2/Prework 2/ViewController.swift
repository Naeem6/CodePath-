//
//  ViewController.swift
//  Prework 2
//
//  Created by Naeem Harvey on 2/3/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var BIl_Amount_Text_Field: UITextField!
    @IBOutlet weak var Tip_AMount_Label: UILabel!
    @IBOutlet weak var Tip_Control: UISegmentedControl!
    @IBOutlet weak var Total_Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Calculate_Tip(_ sender: Any) {
        let bill = Double(BIl_Amount_Text_Field.text!) ?? 0
        
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill *
            tipPercentage[Tip_Control.selectedSegmentIndex]
        let total = bill + tip
        
        Tip_AMount_Label.text = String(format: "$%.2f", tip)
        Total_Label.text = String(format: "$%.2f", total)
        
    }
    

}

