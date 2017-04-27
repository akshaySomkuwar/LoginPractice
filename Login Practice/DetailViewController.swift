//
//  DetailViewController.swift
//  Login Practice
//
//  Created by BBC on 26/04/17.
//  Copyright © 2017 com.bbc.test. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var fullImage: UIImageView!
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBOutlet weak var pLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButtonOutlet.layer.cornerRadius = 20
        
        pLabel.text = nagpurPlaces[currentIndex]
        fullImage.image = UIImage(named: "\(nagpurPlaces[currentIndex]).jpg")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
