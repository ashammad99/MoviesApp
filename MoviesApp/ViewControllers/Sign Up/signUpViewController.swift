//
//  signUpViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/20/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

class signUpViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtFullName: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    @IBOutlet weak var txtPhoneNo: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                setupView()
                localized()
                setupData()
                fetchData()

            }
            override func viewWillAppear(_ animated: Bool) {
                super.viewWillAppear(animated)
                self.navigationController?.setNavigationBarHidden(false, animated: animated)

            }

    @IBAction func btnToGoLogin(_ sender: Any) {
         self.navigationController?.popViewController(animated: true)
    }
    @IBAction func btnSignUp(_ sender: Any) {
        if !Validation(){
            return
        }
        
    }
    
        }
        extension signUpViewController {
            func setupView() {

            }
            func localized() {
                
            }
            func setupData() {
                
            }
            func fetchData() {
                
            }
}
extension signUpViewController {
func Validation()-> Bool {
    if txtFullName.isValidValue || txtEmail.isValidValue || txtPassword.isValidValue || txtConfirmPassword.isValidValue || txtPhoneNo.isValidValue  {
        self.showAlertError(message: "All fields are requirments", button1Style: .default)
       return false
    }
    
    return true
    
}
}
