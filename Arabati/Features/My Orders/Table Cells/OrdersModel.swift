//
//  OrdersModel.swift
//  Arabati
//
//  Created by Madawi Ahmed on 12/05/1444 AH.
//

import UIKit

// MARK: - orderType

enum orderType: CaseIterable {
    
    case helpWithSaee
    case helpWithBoth
    case goToDestination
    case helpWithTawaf

    
    var orderTitle: String {
        switch self {
        case .goToDestination:
            return "التنقل إلى وجهة محددة"
        case .helpWithTawaf:
            return "المساعدة بالطواف"
        case .helpWithSaee:
            return "المساعدة بالسعي"
        case .helpWithBoth:
            return "المساعدة بالطواف، المساعدة بالسعي"
        }
    }
    
    var orderStatus: orderStatus {
        switch self {
            
        case .goToDestination:
            return .completed
        case .helpWithTawaf:
            return .completed
        case .helpWithSaee:
            return .pending
        case .helpWithBoth:
            return .waitingForPayment
        }
    }
}

// MARK: - orderStatus

enum orderStatus {
    
    case completed
    case pending
    case waitingForPayment
    
    var statusTitle: String {
        switch self {
        case .completed:
            return "تم التنفيذ"
        case .pending:
            return "قيذ التنفيذ"
        case .waitingForPayment:
            return "بانتظار الدفع"
        }
    }
    
    var statusColor: UIColor {
        switch self {
        case .completed:
            return UIColor.purpleA0A3BD
        case .pending:
            return UIColor.green3C7D08
        case .waitingForPayment:
            return UIColor.orangeCE881F
        }
    }
    
    var statusImage: UIImage? {
        switch self {
            
        case .completed:
            return UIImage(named: "completed")
        case .pending:
            return UIImage(named: "pending-green")
        case .waitingForPayment:
            return UIImage(named: "pending-orange")
        }
    }
    
}
