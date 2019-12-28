//
//  SearchViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/6/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import CoreData
import FTPopOverMenu
import Alamofire
import SwiftyJSON
class SearchViewController: UIViewController {

    @IBOutlet weak var txtSearchMovies: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var btnDropDown: UIButton!
    
   
    var resultArray: [searchResult] = []
    
    
    var searchArray: [RecentSearches] = []
    
    var CategorySerach = ["All Category","Comedy","Action","Family Movies","Sport Movies","Sci-Fi & Fantasy","Romantic","Horror"]
    
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
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
        self.tableView.reloadData()
    }
    @IBAction func btnSearch(_ sender: Any) {
        fetchData2()
        self.tableView.reloadData()
        let movieName = self.txtSearchMovies.text
        if (movieName != nil && movieName?.count != 0){
            let newItem = NSEntityDescription.insertNewObject(forEntityName: "RecentSearches", into: context)
            newItem.setValue(self.txtSearchMovies.text, forKey: "search")
        }
        do {
            
            try context.save()
            self.txtSearchMovies.text = ""
        }catch {
            print(error)
        }
        
        guard let search = txtSearchMovies.text, search.isEmpty else {
            return}
        self.txtSearchMovies.text?.removeAll()
        let postURL = "https://api.themoviedb.org/3/search/company?api_key=357d8c324b8fa3c154741cc7679a5539&query=x%20men&page=1"
//GlobalConstant.BaseURL + "/search/company"
        let parameters: Parameters = [:] /*[
                                      "api_key":GlobalConstant.api_key,
                                      "query": search]*/
        let headers: HTTPHeaders = []
        
        AF.request(postURL, method: .get, parameters: parameters, headers: headers, interceptor: nil).validate().responseJSON { (response) in
            switch response.result {
                
            case .success(let data):
            let json = JSON(data)
            print(json)
            self.resultArray.removeAll()
            for item in json["results"].array ?? []  {
                let obj = searchResult.init(id: item["id"].int, logo_path: item["logo_path"].string, name: item["name"].string, origin_country: item["origin_country"].string)
                self.resultArray.append(obj)
                
            }
            self.tableView.reloadData()
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
    }
    @IBAction func btnDropDown(_ sender: UIButton) {
        let cellConfig = FTPopOverMenuConfiguration()
        cellConfig.backgroundColor = UIColor.white
        cellConfig.textColor = UIColor.black
        cellConfig.textFont = UIFont.systemFont(ofSize: 18)
        cellConfig.textAlignment =  .center
        cellConfig.menuWidth = 325
        cellConfig.menuRowHeight = 21
        FTPopOverMenu.show(forSender: sender, withMenuArray: self.CategorySerach, doneBlock: { (index) in
            print(self.CategorySerach [index])
        }) {
            
        }
    }
    @IBAction func btnCancelSearch(_ sender: Any) {

    }
    
    @IBAction func btnRemoveHistory(_ sender: Any) {
        for item in searchArray  {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
                context.delete(item)
                (UIApplication.shared.delegate as! AppDelegate).saveContext()
                do {
                    searchArray = try context.fetch(RecentSearches.fetchRequest())
                }catch {
                    print(error)
                }
            }
            tableView.reloadData()
        
    }
}
extension SearchViewController {
    func setupView() {
       tableView.register(UINib.init(nibName: "SearchTableViewCell", bundle: nil), forCellReuseIdentifier: "SearchTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        
        self.fetchData2()
        self.tableView.reloadData()
        tableView.register(UINib.init(nibName: "ResultsearchTableViewCell", bundle: nil), forCellReuseIdentifier: "ResultsearchTableViewCell")
    }
    func localized() {
        
    }
    func setupData() {
  
    }
    func fetchData() {

    }
}
extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        let oneRecord = searchArray[indexPath.row]
        cell.lblCell.text = oneRecord.search!
        let item = searchArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchArray.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        if editingStyle == .delete {
            let search = searchArray[indexPath.row]
            context.delete(search)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            do {
                searchArray = try context.fetch(RecentSearches.fetchRequest())
            }catch {
                print(error)
            }
        }
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedSearch = searchArray[indexPath.row]
        self.txtSearchMovies.text = selectedSearch.search
    }
 

func fetchData2() {
    let context = (UIApplication.shared
        .delegate as! AppDelegate).persistentContainer.viewContext
    do {
        searchArray = try context.fetch(RecentSearches.fetchRequest())
    }catch {
        print(error)
    }
}
}
