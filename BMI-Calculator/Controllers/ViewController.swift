//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Ömer Faruk Okumuş on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    private var bmiCalculator = BmiCalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.1f", sender.value) + "kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        bmiCalculator.calculateBmi(heightSlider.value, weightSlider.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let viewController = segue.destination as! ResultViewController
            viewController.bmi = bmiCalculator.getBmi()
        }
    }
    
}

