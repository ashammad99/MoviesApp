//
//  ProfileTableViewCell.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/23/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var icItem: UIImageView!
    
    @IBOutlet weak var lblItem: UILabel!
    
    
    var object: ProfileConstants.profileItem?

    func configureCell() {
        if let obj = self.object {
            icItem.image = obj.image
            
            lblItem.text = obj.Item
        }
    }
}
