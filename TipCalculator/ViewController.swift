//
//  ViewController.swift
//  TipCalculator
//
//  Created by Johnny Appleseed on 8/6/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!

    var billAmount : Double = 0
    var tipAmount : Double = 0

    var tipPercent : Double = 0.15

    @IBAction func onCalculateButtonTapped(sender: UIButton)
    {
        billAmount = NSString(string: billAmountTextField.text).doubleValue
        tipAmount = billAmount * tipPercent
        tipLabel.text = NSString(format: "$%.2f", tipAmount)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

