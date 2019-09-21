//
//  DocumentTableViewCell.swift
//  CodeForGood2019
//
//  Created by Malik Arachiche on 9/21/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit

class DocumentTableViewCell: UITableViewCell {
    
    @IBOutlet var documentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
