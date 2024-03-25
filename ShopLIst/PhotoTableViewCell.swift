//
//  PhotoTableViewCell.swift
//  ShopLIst
//
//  Created by Shishir_Mac on 20/2/24.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    @IBOutlet weak var showImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
