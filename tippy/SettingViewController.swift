//
//  SettingViewController.swift
//  tippy
//
//  Created by Chengjiu Hong on 11/14/16.
//  Copyright © 2016 Chengjiu Hong. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController{
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabel.center.x = self.view.frame.width + 30
        tipControl.center.x = self.view.frame.width + 30
        
        UIView.animate(withDuration: 3.0, delay: 0, usingSpringWithDamping: 5.0, initialSpringVelocity: 30, options: [], animations: ({
            
            self.tipControl.center.x = self.view.frame.width / 2
            
        }), completion: nil)
        
        UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 30, options: [], animations: ({
            
            self.tipLabel.center.x = self.view.frame.width / 2
            
        }), completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
  }
    
    //passs the selected index back to view controller
    @IBAction func tipUpdate(_ sender: Any) {
        //let tipPercentage = [0.15,0.2,0.25]
        let defaults = UserDefaults.standard
        defaults.set(tipControl.selectedSegmentIndex, forKey: "default_tip_percentage")
        defaults.synchronize()
    }
    
    //get back the selected index
    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor(red:0.33, green:0.31, blue:0.31, alpha:1.0)
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let index = defaults.integer(forKey: "default_tip_percentage")
        tipControl.selectedSegmentIndex = index
    }
    
    

}
