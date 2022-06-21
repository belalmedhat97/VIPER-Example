//
//  UIImageExtension.swift
//  viper
//
//  Created by belal medhat on 13/06/2022.
//

import UIKit
extension UIImageView {
    func convertUrlToImg(link:String){
        DispatchQueue.global(qos: .background).async {
            do{
                let data = try Data.init(contentsOf: URL.init(string:link)!)
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)!
                }
            }
            catch {
                print(error)
            }
        }
    }
}
