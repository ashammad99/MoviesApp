//
//  RequestBuilder.swift
//  MoviesApp
//
//  Created by ashammad99 on 12/6/19.
//  Copyright © 2019 geeks. All rights reserved.
//

import Foundation
import UIKit
import SVProgressHUD
import Alamofire
import SwiftyJSON
class RequestBuilder {
    static let shared = RequestBuilder()
    
    static var header: HTTPHeaders{
        let dic: HTTPHeaders = ["": ""]
        return dic
    }
    private  var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = AppDelegate.shared.rootNavigiationViewController
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }

    class func request(request: BaseRequest,showLoader: Bool = true,success: @escaping ((_ json: JSON) -> Void),failure: @escaping ((_ error: Error) -> Void)){
        guard let url = URL.init(string: "\(GlobalConstant.BaseURL)\(request.url)") else {return}
        if showLoader {
            self.showLoader(isShow: true)//
        }/*
        if request.files.count > 0 {
            AF.upload(multipartFormData: { (multi) in
                if let data = self.imgPicture.image?.jpegData(compressionQuality: 0.5){ multi.append}, to: <#T##URLConvertible#>)
        }*/
        AF.request(url,method: request.method,parameters: request.parameters,headers: self.header,interceptor: nil).validate().responseData { (response) in
            if showLoader {
                self.showLoader(isShow: false)
            }
            switch response.result{
            case .success(let data):
                do {
                    let json = try JSON.init()
                    debugPrint("*************************** Request ***************************")
                    debugPrint("the url is \(url.absoluteString) \n Methods: \(request.method.rawValue) \n Response: \(json.arrayValue)")
                     debugPrint("*************************** Request ***************************")
//                    if json["success"].boolValue == true {
                        success(json)
//                    } else {
//                        let error = NSError.init(domain: json["message"].stringValue, code: json["code"].intValue , userInfo: nil)
//                        failure(error)
//                    }
     
                }catch(let error) {
                    failure(error)
                    debugPrint(error.localizedDescription)
                }
            case .failure(let error):
                failure(error)
                debugPrint(error.localizedDescription)
                break
            }
            
            
        }
    }
    class func requestWithFullSuccessFullResponse(request: BaseRequest,showLoader: Bool = true,showErrorMessage: Bool = true,success: @escaping ((_ json: JSON) -> Void)) {
        self.request(request: request, showLoader: showLoader, success: { (json) in
            success(json)
        }) {   (error) in
            RequestBuilder.shared.parentViewController?.showAlertError(message: error.localizedDescription, button1Style: .default  )
        }
 
    }
    class func showLoader(isShow: Bool) {
        if isShow {
            SVProgressHUD.show()
        } else {
            SVProgressHUD.dismiss()
        }
    }
}

