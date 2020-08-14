//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Paul Franco on 8/13/20.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var result = Result()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        result.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.0f", sender.value)
        heightLabel.text = "\(height) inches"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)lbs"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = result.getBMIValue()
            destinationVC.advice = result.getAdvice()
            destinationVC.color = result.getColor()
        }
    }
}

