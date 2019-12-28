//
//  OneCategoryViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/4/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class OneCategoryViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var movies: [OneCateogry] = []
        
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
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @IBAction func btnBack(_ sender: Any) {
    }
    
}
extension OneCategoryViewController {
    func setupView() {
        collectionView.register(UINib.init(nibName: "OneCategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "OneCategoryCollectionViewCell")
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}
extension OneCategoryViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OneCategoryCollectionViewCell", for: indexPath) as! OneCategoryCollectionViewCell
        let movie = self.movies[indexPath.row]
        cell.Movie = movie
        cell.configureCell()
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = (UIScreen.main.bounds.width - 60) / 3
        let height: CGFloat = width * (105/160)
        return CGSize.init(width: width, height: height)
    }
    
    
}
