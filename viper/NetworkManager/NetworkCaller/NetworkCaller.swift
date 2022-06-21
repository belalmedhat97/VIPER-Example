//
//  NetworkCaller.swift
//  viper
//
//  Created by belal medhat on 11/06/2022.
//

import Foundation



class Network{
    // define the func as async so can be called with await to handle the incoming result with throws for exceptions
    func Request<T:Codable>(URL:URLRequest) async throws -> (T?,Error?){
        
        let session = URLSession(configuration: .default)
        // wait for the request to return back the api call results
        let (data,response) = try await session.data(for: URL)
        if let HTTPResponse = response as? HTTPURLResponse {
            switch HTTPResponse.statusCode {
            case 200..<300:
                do{
                    // 1 - return back the success respnse from server
                    let responseDecoded = try JSONDecoder().decode(T.self, from: data)
                    return (responseDecoded,nil)
                }catch{
                    // 3 - return back error decode
                    return(nil,error)
                }
            case 400...500:
                do{
                    // 2 - return back error response from server
                    let responseDecoded = try JSONDecoder().decode(T.self, from: data)
                    return (responseDecoded,nil)
                }catch{
                    // 3 - return back error decode
                    return(nil,error)
                }
                
            default:
                print("")
            }
        }
        
        return (nil,nil)
    }
}
