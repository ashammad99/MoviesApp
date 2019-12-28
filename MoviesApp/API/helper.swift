//
//  helper.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/22/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class helper: NSObject {
    class func saveApiToken(token: String ) {
        let def = UserDefaults.standard
        def.setValue(token, forKey: "request_token")
        def.synchronize()
    }
    class func getApiToken() -> String? {
        let def = UserDefaults.standard
        return def.object(forKey: "request_token") as? String
        
    }
    // this function to restart app after login process
    class func RestartApp() {
        guard let window = UIApplication.shared.keyWindow else { return }
        
        let sb = UIStoryboard.init(name: "LoginViewController", bundle: nil)
        var vc: UIViewController
        if getApiToken() == nil {
            vc = sb.instantiateInitialViewController()!
        }
        else {
            vc = sb.instantiateViewController(withIdentifier: "TabBar")
        }
        window.rootViewController = vc
        
        UIView.transition(with: window, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil )
    }
}
