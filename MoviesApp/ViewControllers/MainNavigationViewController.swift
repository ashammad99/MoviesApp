//
//  MainNavigationViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/7/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class MainNavigiationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()

        
    }
    

}
extension MainNavigiationViewController {
    func setupView() {
        AppDelegate.shared
       AppDelegate.shared.rootNavigiationViewController = self

        }
    
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
