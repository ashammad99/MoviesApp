//
//  Difination.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/23/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation
import UIKit

enum Board {
    case board_1
    case board_2
    case board_3
    
    var Feature: String {
        switch self {
            
        case .board_1:
            return "Search"
        case .board_2:
            return "Create favourite list "
        case .board_3:
            return "Share your movies"

        }
    }
    var Description: String {
        switch self {
            
        case .board_1:
            return "Easily  search  and find  your movies Notificate the users about new filmes"
        case .board_2:
            return "Create favourite list bookmark your favorite movies watch them later"
        case .board_3:
            return "variety of movies from all genres and Can share movies with your family and friends"

        }
    }
}


