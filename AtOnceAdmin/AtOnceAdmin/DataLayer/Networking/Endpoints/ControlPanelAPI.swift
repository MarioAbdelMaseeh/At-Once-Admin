//
//  ControlPanelAPI.swift
//  AtOnceAdmin
//
//  Created by Adham Mohamed on 21/06/2025.
//

import Foundation
import Alamofire

enum ControlPanelAPI: APIRequest{
    
    case getControlPanelStats(representativeId:Int)
    
    var baseURL: String{
        "http://www.pharmaatoncepredeploy.somee.com/"
    }
    
    var path: String{
        switch self{
        case .getControlPanelStats(representativeId: let representativeId):
            "api/Representative/orders-stats/\(representativeId)"
        }
    }
    
    var method: Alamofire.HTTPMethod{
        switch self{
        case .getControlPanelStats(representativeId: _):
                .get
        }
    }
    
    var headers: [String : String]?{
        ["Content-Type": "application/json"]
    }
    
    var bodyAsDictionary: [String : Any]?{
        nil
    }
    
}
