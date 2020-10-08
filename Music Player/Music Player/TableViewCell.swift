//
//  TableViewCell.swift
//  Music Player
//
//  Created by Vijay Parmar on 08/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgSong: UIImageView!
    
    @IBOutlet weak var lblSingerName: UILabel!
    @IBOutlet weak var lblSongName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
