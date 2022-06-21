//
//  CountryInteractor.swift
//  viper
//
//  Created by belal medhat on 10/06/2022.
//

import Foundation
class CountryInteractor:CountryPresenterToInteractorProtocol{

    
    weak var presenter: CountryInteractorToPresenterProtocol?
    var network:RequesterGroup?
    
    func callCountryApi() {

        // 1 - add task to handle async code
        Task{
            var data = await network?.allCountries()

                if data?.0 != nil {
                    data?.0?.sort { $0.name?.common ?? "A" < $1.name?.common ?? "B"}
                    self.presenter?.returnCountriesData(data: data?.0 ?? [])
                }else{
                    self.presenter?.ErrorFound(error:data?.1?.localizedDescription ?? "")
                }

            }

                        

        }

    }
    
    

