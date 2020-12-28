//
//  DemoTableViewCell.swift
//  Contact TableView Custom Cell
//
//  Created by Punreach Rany on 2020/12/28.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
