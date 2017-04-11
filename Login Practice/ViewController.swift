//
//  ViewController.swift
//  Login Practice
//
//  Created by BBC on 05/04/17.
//  Copyright © 2017 com.bbc.test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties and actions
    
    
    @IBOutlet weak var usernameTextField: UITextField!
   
    
    @IBOutlet weak var passwordTextField: UITextField!
    
      
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        print("pressed")
        if usernameTextField.text == "" || passwordTextField.text == ""
        {
            print("fill the fields")
        }
        else if usernameTextField.text == passwordTextField.text
        {
            print("access granted")
            let SecondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC")
            self.present(SecondVC, animated: true, completion: nil)
            
        }
    
    func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

}
