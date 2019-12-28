//
//  UITextFieldExtensions.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/23/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation
import UIKit
extension UITextField {
    var isValidValue: Bool {
        return self.text?.count != 0 && self.text != nil && !(self.text?.trimmingCharacters(in: .whitespaces).isEmpty ?? false) != false
    }
    var isValidEmail: Bool {
          let regularExpressionForEmail = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
          let testEmail = NSPredicate(format:"SELF MATCHES %@", regularExpressionForEmail)
          return testEmail.evaluate(with: self)
       }
    var isValidPhone: Bool {
          let regularExpressionForPhone = "^\\d{3}-\\d{3}-\\d{4}$"
          let testPhone = NSPredicate(format:"SELF MATCHES %@", regularExpressionForPhone)
          return testPhone.evaluate(with: self)
       
    }
}
