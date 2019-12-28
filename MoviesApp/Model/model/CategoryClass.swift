//
//  CategoryClass.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/17/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation
import UIKit

class CategoryClass {
    var image: String?
    
    var Category: String?
    
    init(image: String, Category: String) {
        self.image = image
        self.Category = Category
    }
}

enum MainCategory {
    case Action
    case Horror
    case Comedy
    case sports
    case Crime
    case Drama
    case Cartoon
    case Historical
    case Fantasy
    case Romantic
    case Family
    case Adventure
    
    var category: String {
        switch self {
        
        case .Action:
            return "Action"
        case .Horror:
            return "Horror"
        case .Comedy:
            return "Comedy"
        case .sports:
            return "sports"
        case .Crime:
            return "Crime"
        case .Drama:
            return "Drama"
        case .Cartoon:
            return "Cartoon"
        case .Historical:
            return "Historical"
        case .Fantasy:
            return "Fantasy"
        case .Romantic:
            return "Romantic"
        case .Family:
            return "Family"
        case .Adventure:
            return "Adventure"
        }
        
    }
    var image: UIImage? {
        switch self {
            
        case .Action:
            return #imageLiteral(resourceName: "bgAction")
        case .Horror:
            return #imageLiteral(resourceName: "Demo3")
        case .Comedy:
            return #imageLiteral(resourceName: "Demo5")
        case .sports:
            return #imageLiteral(resourceName: "bgTrending")
        case .Crime:
            return #imageLiteral(resourceName: "icFilmDetail")
        case .Drama:
            return #imageLiteral(resourceName: "bgNewMovies")
        case .Cartoon:
            return #imageLiteral(resourceName: "Demo2")
        case .Historical:
            return #imageLiteral(resourceName: "Demo5")
        case .Fantasy:
            return #imageLiteral(resourceName: "bgNewMovies")
        case .Romantic:
            return #imageLiteral(resourceName: "bgTrending")
        case .Family:
            return #imageLiteral(resourceName: "bgSportMovies")
        case .Adventure:
            return #imageLiteral(resourceName: "icFilmDetail")
        }
    
    }
}
