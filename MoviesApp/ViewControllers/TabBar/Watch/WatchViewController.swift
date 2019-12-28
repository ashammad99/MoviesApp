//
//  WatchViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/6/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class WatchViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //var categories: [SimilarMovies] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
}
extension WatchViewController {
    func setupView() {
        collectionView.register(UINib.init(nibName: "SuggestedMoviesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SuggestedMoviesCollectionViewCell")
    }
    func localized() {
        
    }
    func setupData() {
        
//        self.categories.append(MainCategory.Action)
//        self.categories.append(MainCategory.Adventure)
//        self.categories.append(MainCategory.Cartoon)
//        self.categories.append(MainCategory.Comedy)
//        self.categories.append(MainCategory.Crime)
//        self.categories.append(MainCategory.Drama)
//        self.categories.append(MainCategory.Family)
//        self.categories.append(MainCategory.Family)
//        self.categories.append(MainCategory.Fantasy)
//        self.categories.append(MainCategory.Historical)
//        self.categories.append(MainCategory.Horror)
//        self.categories.append(MainCategory.sports)
//        self.categories.append(MainCategory.Romantic)
//
        
    }
    func fetchData() {
//   //     let movieId = "104925"
//         let postURL = "https://api.themoviedb.org/3/movie/104925/similar?api_key=357d8c324b8fa3c154741cc7679a5539&language=en-US&page=1"
//         guard let url = URL.init(string: postURL) else { return  }
//         let parameters: Parameters = [:]
//         let headers: HTTPHeaders = []
//        AF.request(url,method: .get,parameters: parameters,headers: headers,interceptor: nil).validate().responseData() { (response) in
//         switch response.result{
//         case .success(let value):
//         do {
//
//            let json = JSON(value)
//            let  dataArr = json["results"].array
//            var x = [SimilarMovies]()
//            
//            for item in dataArr ?? [] {
//                let obj = SimilarMovies.init(fromJson: item)
//                let k: CategoryMovieCollectionViewCell? = nil
//              //  k.imgOfMovie.image = item["backdropPath"]
//                k?.lblCategoryMovie.text = item["title"].string
//            }
//
//         self.collectionView.reloadData()
//         }catch(let error) {
//         debugPrint(error.localizedDescription)
//         }
//         case .failure(let error):
//         debugPrint(error.localizedDescription)
//         break
//         }
//
//         }
    }
}
extension WatchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
   //     return categories.count
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SuggestedMoviesCollectionViewCell", for: indexPath) as! SuggestedMoviesCollectionViewCell
//        let cat = self.categories[indexPath.row]
//        cell.suggmovie = cat
//        cell.configureCell()
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = (UIScreen.main.bounds.width - 45 ) / 2
        let height : CGFloat = width * (137/165)
        return CGSize.init(width: width, height: height)
    }

}


