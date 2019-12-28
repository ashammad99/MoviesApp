//
//  BaseFile.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/6/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation
import UIKit

enum FileDataType: String {
    case image = "image/png"
    case audio = "audio/mp3"
    case video = "video/mp4"
}


class BaseFile {
    var data: Data?
    
    var name: String?
    
    var type: FileDataType = .image
    
    var fileName: String {
        switch type {
       
        case .image:
            return "\(self.name ?? "image").png"
        case .video:
            return "\(self.name ?? "video").mp4"
        case .audio:
            return "\(self.name ?? "audio").mp3"
        }
    }
}

