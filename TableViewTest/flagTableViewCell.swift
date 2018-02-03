//
//  flagTableViewCell.swift
//  TableViewTest
//
//  Created by Anthony Ford on 03/02/2018.
//  Copyright © 2018 Anthony Ford. All rights reserved.
//

import UIKit

class flagTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var flagPic: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
