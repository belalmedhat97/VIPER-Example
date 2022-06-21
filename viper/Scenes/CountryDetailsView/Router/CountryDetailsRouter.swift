//
//  CountryDetailsRouter.swift
//  viper
//
//  Created by belal medhat on 16/06/2022.
//

import UIKit
class CountryDetailsRouter:CountryDetailsPresenterToRouterProtocol{

    
    static func createSceneController(img:String,_ data:[String]) -> UIViewController {
        // MARK: - setup view for addition to navigation stack with dependencies
        let CountryDetailsVCView = CountryDetailsVC(nibName: "CountryDetailsView", bundle: nil)
        
        let router = CountryDetailsRouter()
        let presenter = CountryDetailsPresenter()
 
    
        CountryDetailsVCView.presenter = presenter
        CountryDetailsVCView.presenter?.addTableData(data)
        CountryDetailsVCView.presenter?.addImg(imgUrl: img)
        CountryDetailsVCView.presenter?.router = router
        CountryDetailsVCView.presenter?.view = CountryDetailsVCView


        
        
        return CountryDetailsVCView
    }
    
    
}
