//
//  LoginViewController.swift
//  MoviesApp
//
//  Created by ashammad99 on 11/20/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    static var token: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        localized()
        setupData()
        fetchData()
        getRequestToken()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    @IBAction func btnForgetPassword(_ sender: Any) {
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        print(LoginViewController.token)
        guard let username = txtEmail.text, !username.isEmpty else { return }
        guard let password = txtPassword.text, !password.isEmpty else { return }

        API.login(username: username, password: password) { (error: Error?, sucess: Bool) in
            if sucess {
                
            }else {
             //    self.showAlertError(message: "Invalid Username or password", button1Style: .default)
            }
}
    }
    
    @IBAction func btnSignUp(_ sender: Any) {
    }
    @IBAction func unwindToLogin(for unwindSegue: UIStoryboardSegue) {
        
        
    }
    
}
extension LoginViewController {
    func setupView() {
        
    }
    func localized() {
        
    }
    func setupData() {
        
    }
    func fetchData() {

        
        
    }
}
extension LoginViewController {
    func validition() -> Bool {
        if !txtEmail.isValidValue || !txtPassword.isValidValue {
            self.showAlertError(message: "UserName and Password reqeurmnets to Login", button1Style: .default)
        }
        
        else if !txtEmail.isValidValue  {
            self.showAlertError(message: "Incorrect Email", button1Style: .default)
        if txtPassword.isValidValue {
            self.showAlertError(message: "in correct Password", button1Style: .default)
            
        
}
        return true
}
    
return false
}

 
}
extension LoginViewController {
    
public func getRequestToken() {
    let url_ = "https://api.themoviedb.org/3/authentication/token/new?api_key=357d8c324b8fa3c154741cc7679a5539"
    let headers: HTTPHeaders = []
    let parameters: Parameters = [:]
    AF.request(url_, method: .get, parameters: parameters, headers: headers).responseJSON { (response) in
        switch response.result {
            
        case .success(let value):
            let json = JSON(value)
            if let request_token = json["request_token"].string{
                print("the request token is \(request_token)")
                LoginViewController.token = request_token
                if #available(iOS 13.0, *) {
                    helper.saveApiToken(token: request_token)
                } else {
                    // Fallback on earlier versions
                }
               
            }
        case .failure(let error):
            debugPrint(error)
        }
    

}

}


}


/*
extension LoginViewController {
    func EmailValidation() -> Bool {
        if txtEmail.isValidEmail {
            self.showAlertError(message: "InCorrect Emai,mmm", button1Style: .default)
        
        return false
}
    return true
}
}
 */
/*
extension signUpViewController {
func Validation()-> Bool {
    if txtFullName.isValidValue || txtEmail.isValidValue || txtPassword.isValidValue || txtConfirmPassword.isValidValue || txtPhoneNo.isValidValue  {
        self.showAlertError(message: "All fields are requirments", button1Style: .default)
       return false
    }
    
    return true
    
}
}
*/
