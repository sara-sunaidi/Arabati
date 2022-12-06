//
//  UIStoryboard+Extensions.swift
//  Arabati
//
//  Created by Madawi Ahmed on 11/05/1444 AH.
//

import UIKit

extension UIStoryboard {

    static var main: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    static var home: UIStoryboard {
        return UIStoryboard(name: "Home", bundle: nil)
    }
    
    static var bookNow: UIStoryboard {
        return UIStoryboard(name: "BookNow", bundle: nil)
    }
    
    static var scheduleOrder: UIStoryboard {
        return UIStoryboard(name: "ScheduleOrder", bundle: nil)
    }
    
    static var myOrders: UIStoryboard {
        return UIStoryboard(name: "MyOrders", bundle: nil)
    }
    
    static var profile: UIStoryboard {
        return UIStoryboard(name: "Profile", bundle: nil)
    }
    
    static var orderDetails: UIStoryboard {
        return UIStoryboard(name: "OrderDetails", bundle: nil)
    }
    
    static var offers: UIStoryboard {
        return UIStoryboard(name: "Offers", bundle: nil)
    }
}
