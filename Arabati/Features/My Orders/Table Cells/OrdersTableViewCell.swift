//
//  OrdersTableViewCell.swift
//  Arabati
//
//  Created by Madawi Ahmed on 11/05/1444 AH.
//

import UIKit

class OrdersTableViewCell: UITableViewCell {
    
    static let nibName = "OrdersTableViewCell"

    @IBOutlet weak var cellContentView: UIView!
    @IBOutlet weak var orderTitle: UILabel!
    @IBOutlet weak var orderStatus: UILabel!
    @IBOutlet weak var orderStatusIcone: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setUpContentView()
    }

    func setUpContentView() {
        backgroundColor = UIColor.clear
        selectionStyle = .none
        cellContentView.layer.cornerRadius = 20
        cellContentView.backgroundColor = UIColor.white
        cellContentView.layer.borderWidth = 0.05
        cellContentView.addShadow()
    }
    
    func setOrder(from order: orderType) {
        orderTitle.text = order.orderTitle
        orderStatus.text = order.orderStatus.statusTitle
        orderStatus.textColor = order.orderStatus.statusColor
        orderStatusIcone.image = order.orderStatus.statusImage
    }

}
