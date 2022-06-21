//
//  CountryDetailsPresenter.swift
//  viper
//
//  Created by belal medhat on 16/06/2022.
//

import Foundation
class CountryDetailsPresenter:CountryDetailsPresenterProtocol{

    
    private var dataInTable = [String]()
    private var imgUrl = ""
    
    var router: CountryDetailsPresenterToRouterProtocol?
    
    weak var view: CountryDetailsViewProtocol?
    

    func addTableData(_ data:[String]){
        dataInTable = data
    }
    func addImg(imgUrl: String) {
        self.imgUrl = imgUrl
    }
    
    func onViewDidLoad() {
        self.view?.updateTableView(data: dataInTable)
        self.view?.updateImageFlag(imgUrl: imgUrl)
        print("viewloaded")
    }
    

    
    

    
    
}

