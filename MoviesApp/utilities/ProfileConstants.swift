//
//  ProfileConstants.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/23/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation
import UIKit

class ProfileConstants {
    static let shared = ProfileConstants()
    
    enum profileItem: String {
        case fullName
        case Email
        case phoneNo
        case password
        case AboutThisApp
        case share
        case Logout
        
        var Item: String? {
            switch self {


            case .fullName:
                return nil
            case .Email:
                return nil
            case .phoneNo:
                return nil
            case .password:
                return nil
            case .AboutThisApp:
                return "AboutThisApp"
            case .share:
                return "Share"
            case .Logout:
                return "LogOut"

            }
        }
        var image: UIImage? {
            switch self {
                
            case .fullName:
                return #imageLiteral(resourceName: "icAvatar")
            case .Email:
                return #imageLiteral(resourceName: "icEmail")
            case .phoneNo:
                return #imageLiteral(resourceName: "icPhoneNO")
            case .password:
                return #imageLiteral(resourceName: "icPassword")
            case .AboutThisApp:
                return #imageLiteral(resourceName: "icAboutThisApp")
            case .share:
                return "icShare".image_
            case .Logout:
                return #imageLiteral(resourceName: "icLogOut")
            }
        }
    }
    
    
}
