//
//  SecondViewController.swift
//  BackDataPassingUsingclosures
//
//  Created by Mac on 29/03/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    
    var firstName : String = String()
    var lastName : String = String()
    var city : String = String()
    
    
    var student : Student?
    
    
    var dataPassClosure : ((Student)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
    }
    
    @IBAction func btnBackClick(_ sender: Any) {
        
        firstName = self.firstNameTextField.text!
        lastName = self.lastNameTextField.text!
        city = self.cityTextField.text!
        
        student = Student(firstName: firstName, lastName: lastName, city: city)
        dataPassClosure!(student!)
        
        
        navigationController?.popViewController(animated: true)
        
    }
    

}
