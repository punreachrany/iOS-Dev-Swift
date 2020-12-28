//
//  MyTableViewCell.swift
//  CustomCells
//
//  Created by Punreach Rany on 2020/12/28.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    public func configure(with title: String, imageName: String) {
        myLabelView.text = title
        myImageView.image = UIImage(systemName: imageName)
    }
    

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabelView: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        myImageView.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
