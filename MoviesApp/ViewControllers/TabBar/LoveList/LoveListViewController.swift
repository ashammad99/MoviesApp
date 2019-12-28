//
//  LoveListViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/6/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
class LoveListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
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
extension LoveListViewController {
    func setupView() {
        tableView.register(UINib.init(nibName: "FavouriteListTableViewCell", bundle: nil), forCellReuseIdentifier: "FavouriteListTableViewCell")
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
//                let url = "https://developers.themoviedb.org/3/search/company"
//                
//        let parameters = ["api_key":GlobalConstant.api_key,
//                          "query":"joker"]
//                let headers: HTTPHeaders = [:]
//                let method: HTTPMethod = .get
//             //   guard let url = URL.init(string: postURL) else { return }
//                AF.request(url, method: method, parameters: parameters , headers: headers, interceptor: nil).validate().responseData { (response) in
//                    switch response.result {
//                    case .success(let data):
//                        do {
//                            let json = try JSONSerialization.jsonObject(with: data, options: []) as? [Dictionary<String, Any>]
//                            self.categories.removeAll()
//                            for item in json. ?? [] {
//                                let obj = Post.init(fromJson: item)
//                                self.objects.append(obj)
//                            }
//                            self.tableView.reloadData()
//                        debugPrint(json)
//                            
//                            
//                        
//
//                        }catch(let error) {
//                            debugPrint(error.localizedDescription)
//                        }
//                        break
//                    case .failure(let error):
//                        debugPrint(error.localizedDescription)
//                        break
//                    }
//                }
    }
}
extension LoveListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavouriteListTableViewCell", for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    

    
}
