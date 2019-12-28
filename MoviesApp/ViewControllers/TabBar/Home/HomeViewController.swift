//
//  HomeViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/6/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import FSPagerView
import SwiftyJSON
import Alamofire
import Foundation
import Kingfisher
class HomeViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    var types: [Geners] = []
    
    static var IDs: [Int] = []
    
    @IBOutlet weak var pagerView: FSPagerView!{
        didSet {
            self.pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
            self.pagerView.itemSize = FSPagerView.automaticSize
        }
    }
    
    @IBOutlet weak var pageControl: FSPageControl!{
        didSet {
            self.pageControl.numberOfPages = self.imageNames.count
            self.pageControl.contentHorizontalAlignment = .center
            //    self.pageControl.contentInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        }
        
    }
    var imageNames: [String] = ["bgJoker","bgJoker","bgJoker","bgJoker"]
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}
extension HomeViewController {
    func setupView() {
        pagerView.delegate = self
        pagerView.dataSource = self
        pagerView.isInfinite = true
        pagerView.automaticSlidingInterval = 1
        pagerView.decelerationDistance = 1
      //  pagerView.transformer = FSPagerViewTransformer (type: .)
        
        pageControl.setImage("icSelected".image_, for: .selected)
        pageControl.setImage("icNonSelected".image_, for: .normal)
 //       let transform = CGAffineTransform(scaleX: 1, y: 1)
 //       self.pagerView.itemSize = self.pagerView.frame.size.applying(transform)
        self.pagerView.decelerationDistance = FSPagerView.automaticDistance
        
        
        self.tableView.register(UINib.init(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
        
 
        
    }
    func localized() {
        
    }
    func setupData() {
    }
    func fetchData() {
        
        let postURL = "https://api.themoviedb.org/3/genre/movie/list?api_key=357d8c324b8fa3c154741cc7679a5539&language=en-US"
        let parameters: Parameters = ["api_key":GlobalConstant.api_key]
        let headers: HTTPHeaders = []
   
        AF.request(postURL, method: .get, parameters: parameters, headers: headers, interceptor: nil).validate().responseJSON { (response) in
            switch response.result {
                
            case .success(let data):
            let json = JSON(data)
            print(json)
            self.types.removeAll()
            for item in json["genres"].array ?? []  {
                let obj = Geners.init(id: item["id"].int, name: item["name"].string)
                self.types.append(obj)
                HomeViewController.IDs.append(obj.id ?? 0)
                
            }
            self.tableView.reloadData()
            case .failure(let error):
                debugPrint(error)
            }
        }
        
    }
}
extension HomeViewController: FSPagerViewDelegate, FSPagerViewDataSource {
    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        return self.imageNames.count
        
    }
    
    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage(named: self.imageNames[index])
        cell.imageView?.contentMode = .scaleAspectFill
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    
    // MARK:- FSPagerView Delegate
    
    func pagerView(_ pagerView: FSPagerView, didSelectItemAt index: Int) {
        pagerView.deselectItem(at: index, animated: true)
        pagerView.scrollToItem(at: index, animated: true)
    }
    
    func pagerViewWillEndDragging(_ pagerView: FSPagerView, targetIndex: Int) {
        self.pageControl.currentPage = targetIndex
    }
    
    func pagerViewDidEndScrollAnimation(_ pagerView: FSPagerView) {
        self.pageControl.currentPage = pagerView.currentIndex
    }
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath)
        as! HomeTableViewCell
        cell.type = types[indexPath.row]
     //   types[indexPath.row]
       cell.configureCellForTable()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 226
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
