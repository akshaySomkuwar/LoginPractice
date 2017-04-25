//
//  SecondVC.swift
//  Login Practice
//
//  Created by BBC on 06/04/17.
//  Copyright © 2017 com.bbc.test. All rights reserved.
//

import Foundation
import UIKit

class SecondVC: UIViewController {
    var username = String()
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBAction func exitButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = username
        
        }

}

