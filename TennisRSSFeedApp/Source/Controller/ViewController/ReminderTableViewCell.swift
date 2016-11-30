//
//  ReminderTableViewCell.swift
//  TennisRSSFeedApp
//
//  Created by Bath on 30/11/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class ReminderTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var labelTime = UILabel()
    @IBOutlet weak var buttonOnOff = UIButton()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
