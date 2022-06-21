//
//  CountryProtocols.swift
//  viper
//
//  Created by belal medhat on 10/06/2022.
//

import UIKit


// MARK: View Input (View -> Presenter) 
 protocol CountryPresenterProtocol:AnyObject{
    
var view: CountryViewProtocol? { get set }
var interactor: CountryPresenterToInteractorProtocol? { get set }
var router: CountryPresenterToRouterProtocol? { get set }
    
func getCountries()
func onViewDidLoad()
func passRouteNavigation(nav:UINavigationController,img:String,data:[String])

}



// MARK: View Output (Presenter -> View)
protocol CountryViewProtocol:AnyObject,BaseViewProtocols {
var presenter: CountryPresenterProtocol? { get set }
func updatePicker(data:[CountryBaseClass])

}

// MARK: Interactor Input (Presenter -> Interactor)
protocol CountryPresenterToInteractorProtocol:AnyObject {
var presenter: CountryInteractorToPresenterProtocol? { get set }
var network:RequesterGroup? {get set}
func callCountryApi() 

}

// MARK: Interactor Output (Interactor -> Presenter)
protocol CountryInteractorToPresenterProtocol:AnyObject {
    func returnCountriesData(data:[CountryBaseClass])
    func ErrorFound(error:String)
}

// MARK: Router Input (Presenter -> Router)
protocol CountryPresenterToRouterProtocol:BaseRouterProtocol {
static func createSceneNavigation() -> UINavigationController

}

