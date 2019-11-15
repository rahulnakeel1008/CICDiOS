//
//  ViewController.swift
//  RetirementCalculator
//
//  Created by Rahul on 14/11/19.
//  Copyright © 2019 Servify. All rights reserved.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {

    @IBOutlet weak var monthlyInvestmentsTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var retirementAgeTextField: UITextField!
    @IBOutlet weak var interestRateTextField: UITextField!
    @IBOutlet weak var savingsTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if MSCrashes.hasCrashedInLastSession(){
            
            let alert = UIAlertController(title: "Ooops", message: "Error occured", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        }
    }

    @IBAction func calculateButton_TouchUpInside(_ sender: Any) {
//         MSCrashes.generateTestCrash()
        
//         let current_age : Int? = Int(ageTextField.text!)
//            let planned_retirement_age : Int? = Int(retirementAgeTextField.text!)
           
//            let properties = ["current_age": String(current_age!),
//                              "planned_retirement_age": String(planned_retirement_age!)]
           
           MSAnalytics.trackEvent("calculate_retirement_amount", withProperties: properties)
     }
     

}

