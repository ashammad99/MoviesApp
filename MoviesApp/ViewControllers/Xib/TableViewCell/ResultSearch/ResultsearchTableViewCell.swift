//
//  ResultsearchTableViewCell.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/21/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import Kingfisher
class ResultsearchTableViewCell: UITableViewCell {

    @IBOutlet weak var imgMovie: UIImageView!
    
    @IBOutlet weak var lblMovieName: UILabel!
    
    @IBOutlet weak var lblMovieRating: UILabel!
    
    @IBOutlet weak var lblMovieDuration: UILabel!
    
    @IBOutlet weak var lblMovieGeners: UILabel!
    
    var object: searchResult?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureCell() {
        if let obj = self.object {
        let url = "https://image.tmdb.org/t/p/original//" + (obj.logo_path ?? "")
        self.imgMovie.kf.indicatorType = .activity
        self.imgMovie.kf.setImage(with: URL.init(string: url), placeholder: "bgJoker".image_)
            self.lblMovieName.text = obj.name
    }
    }
    
}
