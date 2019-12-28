//
//  HomeCollectionViewCell.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/11/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import Kingfisher
import SVProgressHUD
import Alamofire
import SwiftyJSON
class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var bgCover: UIImageView!
    
    @IBOutlet weak var lblMovieName: UILabel!
    
    var object: List?
    
    var type: Geners?
    
    override func awakeFromNib() {
        super.awakeFromNib()

        
        
    }
    
    func configureCell() {
        if let obj = object {
            let url = "https://image.tmdb.org/t/p/original//" + (obj.backdrop_path ?? "")
            self.bgCover.kf.indicatorType = .activity
            self.bgCover.kf.setImage(with: URL.init(string: url), placeholder: "bgJoker".image_)
            self.lblMovieName.text = obj.original_title
        }
    }

}
