//
//  SuggestedMoviesCollectionViewCell.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/5/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class SuggestedMoviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgMovieCover: UIImageView!
    
    @IBOutlet weak var lblMovieName: UILabel!
    
    @IBOutlet weak var MovieRaing: UILabel!
    
    @IBOutlet weak var MovieDuration: UILabel!
    
   // var suggmovie: SimilarMovies?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

}
//    func configureCell() {
//        if let obj = self.suggmovie {
//            self.imgMovieCover.image = obj.backdropPath.image
//            self.lblMovieName.text = obj.title
//            self.MovieRaing.text = String(obj.voteCount)
//                   
//
//        }
//    }


}
