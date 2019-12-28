//
//  CateogeisMoviesCVViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/17/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class CateogeisMoviesCVViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var categories: [MainCategory] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()

        
    }
    


}
extension CateogeisMoviesCVViewController {
    func setupView() {
        collectionView.register(UINib.init(nibName: "CategoryMovieCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryMovieCollectionViewCell")
    }
    func localized() {
        
    }
    func setupData() {
        categories.append(MainCategory.Action)
        categories.append(MainCategory.Adventure)
        categories.append(MainCategory.Cartoon)
        categories.append(MainCategory.Comedy)
        categories.append(MainCategory.Crime)
        categories.append(MainCategory.Drama)
        categories.append(MainCategory.Family)
        categories.append(MainCategory.Fantasy)
        categories.append(MainCategory.Historical)
        categories.append(MainCategory.Horror)
        categories.append(MainCategory.Romantic)
        categories.append(MainCategory.sports)
        
        
    }
    func fetchData() {
        
    }
}
/*
extension CateogeisMoviesCVViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    


}
 */
