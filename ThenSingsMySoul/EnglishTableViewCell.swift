//
//  EnglishTableViewCell.swift
//  ThenSingsMySoul
//
//  Created by Sasha on 6/20/17.
//  Copyright © 2017 Novaci. All rights reserved.
//

import UIKit

class EnglishTableViewCell: UITableViewCell {
    
    //MARK: Variable
    @IBOutlet weak var songName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
