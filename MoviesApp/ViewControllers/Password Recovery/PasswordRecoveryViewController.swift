//
//  PasswordRecoveryViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/21/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class PasswordRecoveryViewController: UIViewController {

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


}
extension PasswordRecoveryViewController {
    func setupView() {
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
