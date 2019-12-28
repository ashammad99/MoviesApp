//
//  HomeTableViewData.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/19/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation

class HomeTableViewData {
    
    var name: String?
    
    var data: [CollectionData] = []
    
    init(name: String, data: [CollectionData]) {
        self.name = name
        self.data = data
    }
    
}
