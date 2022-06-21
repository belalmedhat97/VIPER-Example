//
//  CountryRoute.swift
//  viper
//
//  Created by belal medhat on 11/06/2022.
//

import Foundation
enum CountryRoute:Service {
    
    case AllCountries
    case GetCountrybyName(name:String)
    var baseURL: String {
        return Endpoints.baseURL
    }
    
     var path: String {
           switch self {
           case .AllCountries:
               return Endpoints.allCountries
           case .GetCountrybyName(let name):
               return Endpoints.CountryName + name
           }
       }
    
    var parameters: RequestParams {
        switch self {
        case .AllCountries:
            return.NoParamter
        case .GetCountrybyName:
            return.NoParamter
        }
    }
       var method: HTTPMethod {
        switch self {
        case .AllCountries,.GetCountrybyName:
            return .get
        }
    }

    var Header: [String : String] {
        return ["":""]
    }
    
    

}
