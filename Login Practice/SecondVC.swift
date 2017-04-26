//
//  SecondVC.swift
//  Login Practice
//
//  Created by BBC on 06/04/17.
//  Copyright © 2017 com.bbc.test. All rights reserved.
//

import Foundation
import UIKit

class SecondVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nagpurPlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListCellViewController
        cell.thingImage.image = UIImage(named: "\(nagpurPlaces[indexPath.row]).jpg")
        cell.thingName.text = nagpurPlaces[indexPath.row]
        cell.thingAddress.text = address[indexPath.row]
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       currentIndex = indexPath.row
    }
    
    

}

