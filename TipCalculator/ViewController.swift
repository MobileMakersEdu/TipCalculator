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
    @IBOutlet weak var splitCountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    var billAmount : Double = 0
    var tipAmount : Double = 0
    var billTotal : Double = 0

    var tipPercent : Double = 0.15
    var splitCount = 1

    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var fifteenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var twentyFiveButton: UIButton!

    @IBAction func on10buttonTapped(sender: UIButton)
    {
        tipPercent = 0.10
        resetAllButtons()
        tenButton.setImage(UIImage(named: "10Selected"), forState: .Normal)
    }

    @IBAction func on15buttonTapped(sender: UIButton)
    {
        tipPercent = 0.15
        resetAllButtons()
        fifteenButton.setImage(UIImage(named: "15Selected"), forState: .Normal)
    }

    @IBAction func on20buttonTapped(sender: UIButton)
    {
        tipPercent = 0.20
        resetAllButtons()
        twentyButton.setImage(UIImage(named: "20Selected"), forState: .Normal)
    }

    @IBAction func on25buttonTapped(sender: UIButton)
    {
        tipPercent = 0.25
        resetAllButtons()
        twentyFiveButton.setImage(UIImage(named: "25Selected"), forState: .Normal)
    }

    func resetAllButtons()
    {
        tenButton.setImage(UIImage(named: "10unselected"), forState: .Normal)
        fifteenButton.setImage(UIImage(named: "15unselected"), forState: .Normal)
        twentyButton.setImage(UIImage(named: "20unselected"), forState: .Normal)
        twentyFiveButton.setImage(UIImage(named: "25unselected"), forState: .Normal)
    }


    @IBAction func onUpArrowTapped(sender: UIButton)
    {
        splitCount++
        splitCountLabel.text = "\(splitCount)"
    }

    @IBAction func onDownArrowTapped(sender: UIButton)
    {
        if splitCount > 1
        {
        splitCount--
        splitCountLabel.text = "\(splitCount)"
        }
    }

    @IBAction func onCalculateButtonTapped(sender: UIButton)
    {
        billAmount = NSString(string: billAmountTextField.text).doubleValue
        tipAmount = billAmount * tipPercent / Double(splitCount)
        tipLabel.text = NSString(format: "$%.2f", tipAmount)

        billTotal = billAmount + tipAmount
        totalLabel.text = NSString(format: "$%.2f", billTotal)
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

