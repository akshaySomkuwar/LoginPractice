//
//  ListCellViewController.swift
//  Login Practice
//
//  Created by BBC on 26/04/17.
//  Copyright © 2017 com.bbc.test. All rights reserved.
//

import UIKit

class ListCellViewController: UITableViewCell {

    @IBOutlet weak var thingImage: UIImageView!
    @IBOutlet weak var thingName: UILabel!
    @IBOutlet weak var thingAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
