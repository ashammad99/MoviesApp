//
//  PagerViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/10/19.
//  Copyright © 2019 geeks. All rights reserved.
//
//
import UIKit
import XLPagerTabStrip

@available(iOS 13.0, *)
class PagerViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        setupView()
        super.viewDidLoad()
        localized()
        setupData()
        fetchData()
    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "OverViewViewController")
        let child_2 = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "SuggestedMoviesViewController")
        return [child_1, child_2]
    }
}

@available(iOS 13.0, *)
extension PagerViewController {
    func setupView() {
        // change selected bar color
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = #colorLiteral(red: 1, green: 0.3137254902, blue: 0.1254901961, alpha: 1)
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0

        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .gray
            newCell?.label.textColor = .black
        }
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}

