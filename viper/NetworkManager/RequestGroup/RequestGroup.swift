//
//  RequestGroup.swift
//  viper
//
//  Created by belal medhat on 11/06/2022.
//

import Foundation
class RequesterGroup{
    
    private let NetworkRequester = Network()
    func allCountries() async -> ([CountryBaseClass]?,Error?){
    
        do{
        // 2 - await for netwrok call to return with results
        /// Here you can do multiple call api that depends on eachother like
            /// (await func getImg())
            /// (await func sendimg())
            /// ... etc
            let result:([CountryBaseClass]?,Error?) = try await NetworkRequester.Request(URL: CountryRoute.AllCountries.urlRequest)
            switch result {
            case (let response,nil):
            return (response,nil)
                
            case (nil,let errorServer):
            print(errorServer?.localizedDescription ?? "")
            return (nil,errorServer)
            
            default:
            print("error found in decode")

                
            }
        }catch{
        print(error)

        }
             return (nil,nil)

    }
}
