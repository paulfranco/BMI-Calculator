//
//  Result.swift
//  BMI Calculator
//
//  Created by Paul Franco on 8/13/20.
//

import UIKit

struct Result {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = (weight / pow(height, 2)) * 703
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more cookies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less cookies!", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
        
        
    }
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
