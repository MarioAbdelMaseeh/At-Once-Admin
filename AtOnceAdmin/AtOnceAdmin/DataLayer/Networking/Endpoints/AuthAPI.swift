//
//  LoginAPI.swift
//  AtOnceAdmin
//
//  Created by mac on 21/06/2025.
//
import Alamofire
import Foundation

enum AuthAPI: APIRequest{
    case login(email: String, password: String)
    
    var baseURL: String{
        "http://www.pharmaatoncepredeploy.somee.com/"
    }
    
    var path: String{
        switch self{
            case .login:
                "api/Representative/Login"
            }
        
    }
    
    var method: Alamofire.HTTPMethod{
        switch self{
            case .login:
                .post
            }
    }
    
    var headers: [String : String]?{
        ["Content-Type": "application/json"]
    }
    
    var bodyAsDictionary: [String : Any]?{
        switch self{
        case .login(email: let email, password: let password):
            return try? LoginRequest(email: email, password: password).asDictionary()
        }
    }
    
    
}
