//
//  Board2ViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/23/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class Board2ViewController: UIViewController {

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
    @IBAction func btnCancel(_ sender: Any) {
        if #available(iOS 13.0, *) {
            let vc = UIStoryboard.mainStroryBoard.instantiateViewController(identifier: "LoginViewController")
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            // Fallback on earlier versions
        }
    }


        }
        extension Board2ViewController {
            func setupView() {
                
            }
            func localized() {
                
            }
            func setupData() {
                
            }
            func fetchData() {
                
            }
        }
