//
//  ViewController.swift
//  Login Practice
//
//  Created by BBC on 05/04/17.
//  Copyright © 2017 com.bbc.test. All rights reserved.
//

import UIKit

// MARK: Global data for ease

var nagpurPlaces = ["Buldi", "NGP Station", "Ravi Nagar", "Dharampeth", "Nandanvan", "8 Rasta Chowk"]
var address = ["Buldi Market", "Nagpur Railway Station", "Ravi Nagar Sq", "Dharampeth Sq", "Nandanvan Sq", "8 Rasta Chowk"]
var currentIndex = 0

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.usernameTextField.delegate = self
        //passwordTextField.delegate = self
    }

    
    //MARK: Properties and actions
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        print("pressed")
        if usernameTextField.text == "" || passwordTextField.text == ""
        {
            print("fill the fields")
            let alert = UIAlertController.init(title: "Fill Error !", message: "fields should not be empty !", preferredStyle: .alert)
            let action = UIAlertAction.init(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            self.resignFirstResponder()
            self.present(alert, animated: true, completion: nil)
        
        }
            else if usernameTextField.text != passwordTextField.text
        {
            let alert = UIAlertController.init(title: "Fill Error !", message: "data doesnt match !", preferredStyle: .alert)
            let action = UIAlertAction.init(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            self.resignFirstResponder()
            self.present(alert, animated: true, completion: nil)

        }
            
           else if usernameTextField.text == passwordTextField.text
        {
            print("access granted")
            self.performSegue(withIdentifier: "segue", sender: nil)
//            let SecondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC")
//            self.present(SecondVC, animated: true, completion: nil)
        }
        
        func touchesBegan(_: Set<UITouch>, with: UIEvent?) {
            print("wo")
            self.view.endEditing(true)
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            usernameTextField.resignFirstResponder()
            return true
        }
        
    

}

}
