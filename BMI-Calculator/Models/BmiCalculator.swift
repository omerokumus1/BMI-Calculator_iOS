//
//  BmiCalculator.swift
//  BMI-Calculator
//
//  Created by Ömer Faruk Okumuş on 29.01.2023.
//

import UIKit

struct BmiCalculator {
    private var bmi: BMI? = nil
    
    mutating func calculateBmi(_ height: Float, _ weight: Float) {
        let bmiValue = weight / (height * height)
        setBmi(bmiValue)
    }
    
    private mutating func setBmi(_ bmiValue: Float) {
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
    }
    
    func getBmiValue() -> Float? {
        return bmi?.value
    }
    
    func getBmiAdvice() -> String? {
        return bmi?.advice
    }
    
    func getBmiColor() -> UIColor? {
        return bmi?.color
    }
    
    func getBmi() -> BMI? {
        return bmi
    }
    
}
