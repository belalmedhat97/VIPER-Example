//
//  UIViewExtension.swift
//  viper
//
//  Created by belal medhat on 13/06/2022.
//

import UIKit
extension UIView{
    func roundCorners(radius:CGFloat){
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}
