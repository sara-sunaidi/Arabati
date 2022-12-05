//
//  UINavigationController+Extensions.swift
//  Arabati
//
//  Created by Madawi Ahmed on 11/05/1444 AH.
//
import UIKit

extension UINavigationController {
    
    func pushVC(storyboard: UIStoryboard, VCIdetifier: String, animated: Bool){
        let vc = storyboard.instantiateViewController(withIdentifier: VCIdetifier)
        vc.hidesBottomBarWhenPushed = true
        pushViewController(vc, animated: animated)
    }
    
    func popToVC(VCIdetifier: String, animated: Bool){
        
        var vc = UIViewController()
        let viewControllersArray = self.viewControllers
        var i = 0
        
        while (i < viewControllersArray.count){
            
            // TODO: IF Duplicated VC which one will it take?
            if String(describing:type(of: viewControllersArray[i])) == VCIdetifier {
                vc = (viewControllersArray[i])
                popToViewController(vc, animated: animated)
            }
            i+=1
        }
    }
}
