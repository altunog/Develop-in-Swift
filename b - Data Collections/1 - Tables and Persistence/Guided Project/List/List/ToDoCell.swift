//
//  ToDoCell.swift
//  List
//
//  Created by Oğuz Kaan Altun on 28.05.2023.
//

import UIKit

class ToDoCell: UITableViewCell {
    
    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
