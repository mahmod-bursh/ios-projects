//
//  mycell.swift
//  ZooApp
//
//  Created by Amjad Jamal on 9/27/18.
//  Copyright © 2018 amjad. All rights reserved.
//

import UIKit

class mycell: UITableViewCell {

    @IBOutlet weak var laname: UILabel!
    @IBOutlet weak var laimg: UIImageView!
    @IBOutlet weak var lades: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
