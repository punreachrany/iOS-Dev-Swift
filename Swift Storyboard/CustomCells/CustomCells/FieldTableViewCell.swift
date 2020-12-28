//
//  FieldTableViewCell.swift
//  CustomCells
//
//  Created by Punreach Rany on 2020/12/28.
//

import UIKit

class FieldTableViewCell: UITableViewCell {
    
    static let identifier = "FieldTableViewCell"
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: nil)
    }
    

    @IBOutlet weak var field: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        field.placeholder = "Enter something..."
        field.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        super.setSelected(selected, animated: animated)
    }
    
    
    
}

extension FieldTableViewCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("\(textField.text ?? "")")
        return true
    }
    
    
}
