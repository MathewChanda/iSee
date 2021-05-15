//
//  WishlistCell.swift
//  iSee
//
//  Created by Mathew Chanda on 5/14/21.
//

import UIKit

class WishlistCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var Price: UILabel!
    @IBOutlet weak var itemPic: UIImageView!
    var phone : Phone?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

