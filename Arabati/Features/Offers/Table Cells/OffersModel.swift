//
//  OffersModel.swift
//  Arabati
//
//  Created by Madawi Ahmed on 12/05/1444 AH.
//

import UIKit

enum offersMock: CaseIterable {
    
    case firstOffer
    case secondOffer
    case thirdOffer
    
    var offerName: String {
        switch self {
        case .firstOffer:
            return "محمد أحمد"
        case .secondOffer:
            return "سعود"
        case .thirdOffer:
            return "عبدالله"
        }
    }
    
    var offerRating: UIImage? {
        switch self {
        case .firstOffer:
            return UIImage(named: "rating-4")
        case .secondOffer:
            return UIImage(named: "rating-3")
        case .thirdOffer:
            return UIImage(named: "rating-5")
        }
    }
    
    var offerPrice: String {
        switch self {
        case .firstOffer:
            return "٥٠ ر.س"
        case .secondOffer:
            return "٧٠ ر.س"
        case .thirdOffer:
            return "٥٥ ر.س"
        }
    }
    
    var offerDistance: String {
        switch self {
        case .firstOffer:
           return "2.1"
        case .secondOffer:
            return "4.3"
        case .thirdOffer:
            return "2.7"
        }
    }
}
