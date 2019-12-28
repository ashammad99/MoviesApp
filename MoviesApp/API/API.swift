//
//  API.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/22/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class API: NSObject {
    class func login(username: String, password: String   ,completion: @escaping(_ error: Error?,_ succeed: Bool)->Void){
        let postURL = GlobalConstant.BaseURL + "authentication/token/validate_with_login"

        let headers: HTTPHeaders = []
        let parameters: Parameters = ["username":username,
                                      "password":password,
                                      "request_token":LoginViewController.token,         "api_key":GlobalConstant.api_key]
        AF.request(postURL, method: .post, parameters: parameters, headers: headers, interceptor: nil).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                completion(nil, true)
                let json = JSON(value)
            case .failure(let error):
                completion(error, false)
                print(error.localizedDescription)
            }
        }
    }
//    class func getMoviesList(){
//    { (response) in
//            switch response.result {
//            case .success(let value):
//                let json = JSON(value)
//                guard let dataArr = json["genres"].array else { return }
//                    self..removeAll()
//                for item in json.array ?? [] {
//                            let obj = Genre.init(fromJson: item)
//                            self.types.append(obj)
//                        }
//                    self.tableView.reloadData()
//                }
//            case .failure(let error):
//                debugPrint(error)
//            }
//        }
//
//
//    }
    class func getMoviesOfList(list_id: Int,array: [String]){
        /*
        let url = "https://api.themoviedb.org/3/list/\(list_id)?api_key=357d8c324b8fa3c154741cc7679a5539&language=en-US"
        let parameters: Parameters = [:]
        let headers: HTTPHeaders = []
        AF.request(url, method: .get, parameters: parameters, headers: headers, interceptor: nil).validate().responseJSON { (response) in
            switch response.result {
                
            case .success(let value):
                let json = JSON(value)
                self..removeAll()
                for item in json["items"].array ?? []  {
                    let obj = List.init(original_title: item["original_title"].stringValue , poster_path: item["poster_path"].stringValue, backdrop_path: item["backdrop_path"].stringValue, id: item["id"].intValue, overview: item["overview"].stringValue, vote_average: item["vote_average"].intValue, media_type: item["media_type"].stringValue)

                    self.data.append(obj)
                    }
                self.collectionView.reloadData()

            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
     */
    }
}
