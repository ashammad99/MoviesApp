//
//  PasswordRecovey3ViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/22/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class PasswordRecovey3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                setupView()
                localized()
                setupData()
                fetchData()

                        
        }
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            self.navigationController?.setNavigationBarHidden(false, animated: animated)

        }
    @IBAction func btnConfirmPassword(_ sender: Any) {
        if #available(iOS 13.0, *) {
            let vc = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "LoginViewController")
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            // Fallback on earlier versions
        }
        
    }
    


    }
extension PasswordRecovey3ViewController {
    func setupView() {
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
