//
//  CountryRouter.swift
//  viper
//
//  Created by belal medhat on 10/06/2022.
//

import UIKit
class CountryRouter:CountryPresenterToRouterProtocol{
    static func createSceneNavigation() -> UINavigationController {
        // MARK: - setup view for addition to navigation stack with dependencies
        let CountryVCView = CountryVC(nibName: "AllCountryView", bundle: nil)
        let nv = UINavigationController(rootViewController: CountryVCView)
        
        let router = CountryRouter()
        let presenter = CountryPresenter()
        let interactor = CountryInteractor()
        
    
        CountryVCView.presenter = presenter
        CountryVCView.presenter?.interactor = interactor
        CountryVCView.presenter?.router = router
        CountryVCView.presenter?.view = CountryVCView
        CountryVCView.presenter?.interactor?.network = RequesterGroup()
        CountryVCView.presenter?.interactor?.presenter = presenter

        
        
        return nv
    }
    
    func pushView(nav:UINavigationController ,With: UIViewController) {
        nav.pushViewController(With, animated: true)
        
    }

    
    
}
