//
//  ViewController.swift
//  TIP APP
//
//  Created by fanflor theodore  on 8/14/20.
//  Copyright © 2020 searto . All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //variables
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var billAmountTexFeild: UITextField!
    
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
   
    
    
    //function
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any)
    {
        
    }
    
    @IBAction func calculateTip(_ sender: Any)
    {
        let bill=Double(billAmountTexFeild.text!) ?? 0
        let tipPercentage=[0.15, 0.18, 0.2]
            
        let tip=bill*tipPercentage[tipControl.selectedSegmentIndex]
        let total=bill+tip
        
        
        
        tipPercentageLabel.text=String(format: "$%.2f",tip)
        totalLabel.text=String(format:"$%.2f",total)
        
    }
    
    
    
}

