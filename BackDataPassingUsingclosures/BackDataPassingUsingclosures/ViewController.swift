//
//  ViewController.swift
//  BackDataPassingUsingclosures
//
//  Created by Mac on 29/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var cityNameLabel: UILabel!
    
    var secondViewController : SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func btnMoveToSVC(_ sender: Any) {
        secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as?  SecondViewController
        
        secondViewController?.dataPassClosure = {
            (student) in
            self.firstNameLabel.text = student.firstName
            self.lastNameLabel.text = student.lastName
            self.cityNameLabel.text = student.city
        }
        
        navigationController?.pushViewController(secondViewController!, animated: true)
    }
    

}

