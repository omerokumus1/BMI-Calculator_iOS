//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Ömer Faruk Okumuş on 31.01.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: BMI? = nil

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = String(format: "%.1f",  bmi?.value ?? 0)
        adviceLabel.text = bmi?.advice
        self.view.backgroundColor = bmi?.color
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
