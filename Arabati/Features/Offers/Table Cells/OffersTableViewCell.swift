//
//  OffersTableViewCell.swift
//  Arabati
//
//  Created by Madawi Ahmed on 12/05/1444 AH.
//

import UIKit

class OffersTableViewCell: UITableViewCell {
    
    static let nibName = "OffersTableViewCell"

    @IBOutlet weak var cellContentView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
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
    
    func setOffer(from offer: offersMock) {
        nameLabel.text = offer.offerName
        ratingImageView.image = offer.offerRating
        priceLabel.text = offer.offerPrice
        distanceLabel.text = offer.offerDistance
    }

}
