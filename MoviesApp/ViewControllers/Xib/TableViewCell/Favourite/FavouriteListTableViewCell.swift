//
//  FavouriteListTableViewCell.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/28/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class FavouriteListTableViewCell: UITableViewCell {

    @IBOutlet weak var imgCover: UIImageView!
    
    @IBOutlet weak var lblFilemName: UILabel!
    
    @IBOutlet weak var btnRemoveFromFavouriteList: UIButton!
    
    @IBOutlet weak var lblRating: UILabel!
    
    @IBOutlet weak var lblDurationOfFilm: UILabel!
    
    @IBOutlet weak var lblCategorOfFilm: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func btnShare(_ sender: Any) {
    }
    @IBAction func btnRemoveFromFavouriteList(_ sender: Any) {
    }
}
