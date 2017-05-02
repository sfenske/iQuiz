//
//  TVCTableViewCell.swift
//  iQuiz
//
//  Created by Sydnie Fenske on 5/2/17.
//  Copyright © 2017 Sydnie Fenske. All rights reserved.
//

import UIKit

class TVCTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var mySubs: UILabel!

    @IBOutlet weak var descrip: UILabel!
    @IBOutlet weak var myIcons: UIImageView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
