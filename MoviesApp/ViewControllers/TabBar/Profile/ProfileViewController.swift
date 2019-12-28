//
//  ProfileViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/6/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
@available(iOS 13.0, *)
class ProfileViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imgProfile: UIImageView!
    
    var objects: [ProfileConstants.profileItem] = []
    
    var object: ProfileConstants?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
        
        
    }
    @IBAction func btnEditProfile(_ sender: Any) {
        print("hello")
        if #available(iOS 13.0, *){
        let vc = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "EditProfileViewController")
      //  AppDelegate.shared.rootNavigiationViewController?.setViewControllers([vc], animated: true)
            navigationController?.pushViewController(vc, animated: true)
        }else {
            
        }
}
}
@available(iOS 13.0, *)
extension ProfileViewController {
    func setupView() {
        tableView.register(UINib.init(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileTableViewCell")
        objects.append(.fullName)
        objects.append(.Email)
        objects.append(.phoneNo)
        objects.append(.password)
        objects.append(.AboutThisApp)
        objects.append(.share)
        objects.append(.Logout)
        
        imgProfile.layer.cornerRadius = imgProfile.frame.size.width/2
        imgProfile.clipsToBounds = true
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {
        
    }
}

@available(iOS 13.0, *)
extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell",for: indexPath) as! ProfileTableViewCell
        cell.object = self.objects[indexPath.row]
        cell.configureCell()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        if indexPath.row == 4 {
            if #available(iOS 13.0, *) {
                let vc = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "AboutThisAppViewController") as! AboutThisAppViewController
                self.navigationController?.pushViewController(vc, animated: true)
            } else {
                // Fallback on earlier versions
            }
            
        }else if indexPath.row == 6 {
            self.performSegue(withIdentifier: "unwindToLogin", sender: nil)
        }
    }
    
}
