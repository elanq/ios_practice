//
//  ViewController.swift
//  BMI cal
//
//  Created by Elan Qisthi on 12/05/18.
//  Copyright © 2018 Elan Qisthi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bodyWeightLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var bodyWeightOutlet: UITextField!
    @IBOutlet weak var bodyHeightOutlet: UITextField!
    
    @IBAction func bodyWeightEdit(_ sender: UITextField) {
        calculateBMI()
    }
    
    @IBAction func bodyHeightEdit(_ sender: UITextField) {
        calculateBMI()
    }
    
    func calculateBMI() {
        let height = (Float(bodyHeightOutlet.text ?? "0") ?? 0) / 100
        let weight = Float(bodyWeightOutlet.text ?? "") ?? 0
        let bmi = weight / ((height)*(height))
        
        if weight != 0 && height != 0 {
            descriptionLabel.text = getBMIDescription(bmi: bmi)
            bodyWeightLabel.text = "\(Int(bmi)) %"
        }
        
    }
    
    func getBMIDescription(bmi: Float) -> String {
        if bmi > 25.0 {
            return "Overweight"
        }
        
        if bmi < 18.5 {
            return "Underweight"
        }
        
        return "normal"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //dismiss keyboard
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
            view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

