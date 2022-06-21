//
//  BaseProtocols.swift
//  viper
//
//  Created by belal medhat on 16/06/2022.
//

import UIKit

//MARK: - base view protocols
protocol BaseViewProtocols{

    func loadingIndicator(isHidden:Bool)
    func AlertView(isHidden:Bool)
}
extension BaseViewProtocols {
    
    // implement two func as default so no need to implement when inherit
    func loadingIndicator(isHidden:Bool){
        
    }
    func AlertView(isHidden:Bool){
        
    }
}
//MARK: - base router protocols
protocol BaseRouterProtocol{
    func pushView(nav:UINavigationController,With:UIViewController) 
    func popView()
    func present()
    func dismiss()

}
extension BaseRouterProtocol{
    
    func pushView(nav:UINavigationController,With:UIViewController) {

    }
    func popView() {
        
    }
    func present() {
        
    }
    func dismiss() {
        
    }
}
