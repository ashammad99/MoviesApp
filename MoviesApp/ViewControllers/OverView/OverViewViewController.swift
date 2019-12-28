//
//  OverViewViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/5/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import XLPagerTabStrip
class OverViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
    }
}
extension OverViewViewController {
    func setupView() {
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
extension OverViewViewController: IndicatorInfoProvider  {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "OverView")
    }
}
