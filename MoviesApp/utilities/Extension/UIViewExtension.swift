//
//  UIViewExtension.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/2/19.
//  Copyright © 2019 geeks. All rights reserved.
//


import Foundation
import UIKit
extension UIView {
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
    
    @IBInspectable var isRounded: Bool {
        set {
            self.layer.cornerRadius = self.frame.height / 2
        }
        get {
            return self.layer.cornerRadius == self.frame.height / 2
            
        }
    }
}
