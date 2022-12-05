//
//  UIView+Extensions.swift
//  Arabati
//
//  Created by Madawi Ahmed on 11/05/1444 AH.
//

import UIKit

extension UIView {
    
    func addShadow(){
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 0.0
        self.layer.masksToBounds = false
    }
}
