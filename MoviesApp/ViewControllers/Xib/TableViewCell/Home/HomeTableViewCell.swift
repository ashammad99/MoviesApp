//
//  HomeTableViewCell.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/15/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var lblCategoryName: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!

    var data: [List] = []
    
    var types: [Geners] = []
    
    var type: Geners?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.register(UINib.init(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self


         let postURL = "https://api.themoviedb.org/3/list/12?api_key=357d8c324b8fa3c154741cc7679a5539&language=en-US"
         let parameters: Parameters = ["api_key":GlobalConstant.api_key]
         let headers: HTTPHeaders = []

         AF.request(postURL, method: .get, parameters: parameters, headers: headers, interceptor: nil).validate().responseJSON { (response) in
             switch response.result {
                 
             case .success(let data):
             let json = JSON(data)
             print(json)
             self.data.removeAll()
             for item in json["items"].array ?? []  {
                let obj = List.init(original_title: item["original_title"].string, poster_path: item["poster_path"].string, backdrop_path: item["backdrop_path"].string, id: item["id"].int, overview: item["overview"].string, vote_average: item["vote_average"].int, media_type: item)
                 self.data.append(obj)
                // HomeViewController.IDs.append(obj.id ?? 0)
                 
             }
             self.collectionView.reloadData()
             case .failure(let error):
                 debugPrint(error)
             }
         }
    }
}

    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func btnSeeAll(_ sender: UIButton) {
        
    }
    
    func configureCellForTable() {
        if let obj = self.type {
            self.lblCategoryName.text = obj.name
        }
    }
}
extension HomeTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.object = data[indexPath.row]
        cell.configureCell()
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = 115
        let height : CGFloat = 180
        return CGSize.init(width: width, height: height)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if #available(iOS 13.0, *) {
            let vc = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "PagerViewController")
            self.parentViewController?.navigationController?.pushViewController(vc, animated: true)
        } else {
            // Fallback on earlier versions
        }
        
    }

    
}

