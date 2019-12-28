//
//  BaseRequest.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/6/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation
import UIKit
import SVProgressHUD
import Alamofire


class BaseRequest {
    var  url: String = "https://api.themoviedb.org/3/movie/"
    
    var parameters: [String: Any] = [:]
    
    var headers: HTTPHeaders = ["":""]
    
    var method: HTTPMethod = .get
    
    var files: [BaseFile] = []
    
}
