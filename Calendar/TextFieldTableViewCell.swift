//
//  TextFieldTableViewCell.swift
//  Calendar
//
//  Created by user on 2018/09/11.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var Field: UITextField!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
