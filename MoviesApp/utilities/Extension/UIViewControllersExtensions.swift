//
//  UIViewControllersExtensions.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/23/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlertPopUp(title: String,message: String,btnTitle1: String ,btnTitle2: String,btnTitle1Style: UIAlertAction.Style,btnTitle2Style: UIAlertAction.Style ,action btnTitle1Action: @escaping (()-> Void),action btnTitle2Action: @escaping (()-> Void)){
        let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        let   btn1 = UIAlertAction.init(title: btnTitle1, style: btnTitle1Style){ (action) in
            btnTitle1Action()
        }
        let btn2 = UIAlertAction.init(title: btnTitle1, style: btnTitle1Style){ (action) in
            btnTitle2Action()
        }
        btn2.setValue(UIColor.red, forKey: "titleTextColor")
        alert.addAction(btn1)
        alert.addAction(btn2)
        self.present(alert,animated: true,completion: nil)
    }
    func showAlertError(message: String,buttonTitle1: String = "Ok",button1Style: UIAlertAction.Style ){
            let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
            let button1 = UIAlertAction.init(title: buttonTitle1, style: button1Style){(action) in print("\(buttonTitle1) button")
                
                
            }
//            let button2 = UIAlertAction.init(title: buttonTitle2, style: button2Style){(action) in print("\(buttonTitle2) button")
//
//            }
            alert.addAction(button1)
          //  alert.addAction(button2)
            self.present(alert, animated: true, completion: nil)
            
        }
    }


