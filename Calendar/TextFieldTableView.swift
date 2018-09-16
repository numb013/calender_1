//
//  TextFieldTableView.swift
//  Calendar
//
//  Created by user on 2018/09/10.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class TextFieldTableView: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
