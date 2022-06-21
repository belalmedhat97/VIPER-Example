//
//  CountryPresenter.swift
//  viper
//
//  Created by belal medhat on 10/06/2022.
//

import Foundation
import UIKit
class CountryPresenter:CountryPresenterProtocol{
    
    
    
    var interactor: CountryPresenterToInteractorProtocol?
    var router: CountryPresenterToRouterProtocol?
    weak var view:  CountryViewProtocol?

    
    

    func getCountries() {
        self.view?.loadingIndicator(isHidden: false)
        self.interactor?.callCountryApi()

    }
    
    func onViewDidLoad() {
        print("viewloaded")
    }
    
    func passRouteNavigation(nav:UINavigationController,img:String,data:[String]){

    self.router?.pushView(nav:nav,With: CountryDetailsRouter.createSceneController(img: img, data))
    }

    
    

    
    
}
// MARK: - back relation
// interactor deals with data and methods in presenter
extension CountryPresenter:CountryInteractorToPresenterProtocol{
    func returnCountriesData(data: [CountryBaseClass]) {
        self.view?.AlertView(isHidden: true)
        self.view?.updatePicker(data: data)
        self.view?.loadingIndicator(isHidden: true)

    }
    
    func ErrorFound(error: String) {
        self.view?.AlertView(isHidden: false)
    }
    
    
    
}
