//
//  TableViewCell.swift
//  tableViewsSample
//
//  Created by Tomoyuki Hayakawa on 2018/02/12.
//  Copyright © 2018年 Tomoyuki Hayakawa. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
