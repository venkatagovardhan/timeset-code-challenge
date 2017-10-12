//
//  TableViewCell.swift
//  TimeSetCodeChallenge
//
//  Created by Vineela Mallipeddi on 5/3/17.
//  Copyright © 2017 govardhan. All rights reserved.
//

import UIKit


class TableViewCell: UITableViewCell {

    @IBOutlet weak var Post: UILabel!
    @IBOutlet weak var SmallImage3: UIImageView!
    @IBOutlet weak var SmallImage2: UIImageView!
    @IBOutlet weak var SmallImage1: UIImageView!
    @IBOutlet weak var BigImage: UIImageView!
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var UserImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
