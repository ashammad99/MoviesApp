//
//  String.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/6/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation
import UIKit

extension String {

    var image_: UIImage? {
        return UIImage.init(named: self)
    }
    var color_: UIColor {
        return UIColor.init(named: self) ?? UIColor.white
    }
    var localize_: String? {
        return NSLocalizedString(self, comment: "")
    }
    
}

