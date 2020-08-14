//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Paul Franco on 8/13/20.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var advicelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiValue
        advicelabel.text = advice
        view.backgroundColor = color
        
    }
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
