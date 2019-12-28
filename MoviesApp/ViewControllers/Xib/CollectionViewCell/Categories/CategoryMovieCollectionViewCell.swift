//
//  CategoryMovieCollectionViewCell.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/17/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class CategoryMovieCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgOfMovie: UIImageView!
    
    @IBOutlet weak var lblCategoryMovie: UILabel!
    
   // var category: SimilarMovies?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
//    func configureCell() {
//        if let obj = self.category {
//            self.imgOfMovie.image = obj.posterPath as? UIImage
//            self.lblCategoryMovie.text = obj.title
//        }
//    }
}
