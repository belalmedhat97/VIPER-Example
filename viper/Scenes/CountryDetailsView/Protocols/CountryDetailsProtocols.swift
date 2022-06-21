//
//  CountryDetailsProtocols.swift
//  viper
//
//  Created by belal medhat on 16/06/2022.
//


import UIKit

// only define presenter + view + Router as there is no logic in the second screen of country details
// MARK: View Input (View -> Presenter)
protocol CountryDetailsPresenterProtocol:AnyObject{
    
    
var view: CountryDetailsViewProtocol? { get set }
//var interactor: CountryDetailsPresenterToInteractorProtocol? { get set }
var router: CountryDetailsPresenterToRouterProtocol? { get set }
func addTableData(_ data:[String])
func addImg(imgUrl:String)
func onViewDidLoad()

}



// MARK: View Output (Presenter -> View)
protocol CountryDetailsViewProtocol:AnyObject,BaseViewProtocols {
var presenter: CountryDetailsPresenterProtocol? { get set }
func updateTableView(data:[String])
func updateImageFlag(imgUrl:String)


}
// MARK: Router Input (Presenter -> Router)
protocol CountryDetailsPresenterToRouterProtocol:BaseRouterProtocol {
    static func createSceneController(img:String,_ data:[String]) -> UIViewController

}

