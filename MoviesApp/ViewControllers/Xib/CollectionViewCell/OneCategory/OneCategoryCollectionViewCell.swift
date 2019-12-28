//
//  OneCategoryCollectionViewCell.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/4/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class OneCategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgMovie: UIImageView!
    
    @IBOutlet weak var nameOfMovie: UILabel!
    
    var Movie: OneCateogry?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell() {
        if let obj = self.Movie {
            self.nameOfMovie.text = obj.movieName
            self.imgMovie.image = obj.imgMovie
        }
    }
}
