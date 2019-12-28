//
//  AboutThisAppViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/22/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class AboutThisAppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }


}
extension AboutThisAppViewController {
    func setupView() {
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
