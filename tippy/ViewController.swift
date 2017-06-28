//
//  ViewController.swift
//  tippy
//
//  Created by Chengjiu Hong on 11/13/16.
//  Copyright © 2016 Chengjiu Hong. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    var pickerData: [String] = [String]()
    var peopleCount : String = "1"
    var total : Double = 0
    var bill : Double = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder() //the bill amount is the first thing to open
        pickerData = ["1", "2", "3", "4", "5", "6", "7","8","9","10","11","12","13","14","15","16","17","18","19","20",]
        self.picker.delegate = self
        self.picker.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true )
    }
    
    //calculate tip,total,split
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentage = [0.15,0.2,0.25]
        bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        total = bill + tip
        let split = total / Double(peopleCount)!
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitLabel.text = String(format: "$%.2f", split)
    }
    
    // returns the number of 'columns' to display.
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    
    // returns the # of rows in each component..
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    //recalulate tip base on people count
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        peopleCount = pickerData[row]
        let split = total / Double(peopleCount)!
        splitLabel.text = String(format: "$%.2f", split)

    }
    
    //recalculate total,tip,split
    override func viewWillAppear(_ animated: Bool) {
        let tipPercentage = [0.15,0.2,0.25]
        
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let index = defaults.integer(forKey: "default_tip_percentage")
        tipControl.selectedSegmentIndex = index
        
        let tip = bill * tipPercentage[index]
        total = bill + tip
        let split = total / Double(peopleCount)!
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitLabel.text = String(format: "$%.2f", split)
        
    }
    
    @IBAction func clearButton(_ sender: Any) {
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        splitLabel.text = "$0.00"
        billField.text = nil
    }
    
}

