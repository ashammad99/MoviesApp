//
//  SuggestedMoviesViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/5/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import Alamofire
import SwiftyJSON
class SuggestedMoviesViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
   // var suggMovies: [SimilarMovies] = []
    
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            setupView()
            localized()
            setupData()
            fetchData()
        }
    }
extension SuggestedMoviesViewController {
        func setupView() {
        collectionView.register(UINib.init(nibName: "SuggestedMoviesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SuggestedMoviesCollectionViewCell")
            
        }
        func localized() {
            
        }
        func setupData() {

        }
        func fetchData() {
//          //  let movieId = "104925"
//            let postURL = "https://api.themoviedb.org/3/movie/104925/similar?api_key=357d8c324b8fa3c154741cc7679a5539&language=en-US&page=1"
//            guard let url = URL.init(string: postURL) else { return  }
//            let parameters: Parameters = [:]
//            let headers: HTTPHeaders = []
//            AF.request(url, method: .get, parameters: parameters, headers: headers, interceptor: nil).validate().responseJSON { (response) in
//                switch response.result {
//                    case .success(let data):
//                    do {
//                        guard let data = response.data else { return }
//                       let json = try? JSON.init(data: data)
//               //         let json = try? JSONSerialization.jsonObject(with: data, options: [:]) as? Dictionary<String, Any>
//                        debugPrint(json)
//            //            self.suggMovies.removeAll()
//                        for item in json?.dictionary ?? [:] {
//                      //      let obj = SimilarMovies.init(fromJson: item)
//                 //       self.suggMovies.append(obj)
//                        debugPrint(json)
//           }
//                        self.collectionView.reloadData()
//                }
//                    
//                case .failure(let error):
//                    debugPrint(error.localizedDescription)
//                    break
//                }
//            }
        }
    }
extension SuggestedMoviesViewController: IndicatorInfoProvider{
        func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
            return IndicatorInfo(title: "Suggested Movies")
            
        }
    }

extension SuggestedMoviesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      //  return suggMovies.count
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SuggestedMoviesCollectionViewCell", for: indexPath) as! SuggestedMoviesCollectionViewCell
     //   cell.suggmovie = suggMovies[indexPath.row]
      //  cell.configureCell()
        self.collectionView.reloadData()
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = (UIScreen.main.bounds.width - 45 ) / 2
        let height : CGFloat = width * (165/200)
        return CGSize.init(width: width, height: height)
    }
    
}
