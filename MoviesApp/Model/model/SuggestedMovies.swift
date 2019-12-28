//
//  SuggestedMovies.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/11/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation
import UIKit


class SuggestedMovies {
    var movieName: String?
    var imgMovie: UIImage?
    var MovieRating: String?
    var MovieDuration: String?
    
    init(movieName: String, imgMovie: UIImage, MovieRating: String,MovieDuration: String) {
        self.movieName = movieName
        self.imgMovie = imgMovie
        self.MovieRating = MovieRating
        self.MovieDuration = MovieDuration
        
    }
    
    
}
