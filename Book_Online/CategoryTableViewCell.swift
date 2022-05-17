//
//  CategoryTableViewCell.swift
//  Book_Online
//
//  Created by VoYen on 2022-05-17.
//  Copyright © 2022 VoYen. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


