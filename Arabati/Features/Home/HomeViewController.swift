//
//  HomeViewController.swift
//  Arabati
//
//  Created by Sara Alsunaidi on 04/12/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var bookNowView: UIView!
    @IBOutlet weak var scheduleOrderView: UIView!
    @IBOutlet weak var bookNowImageView: UIImageView!
    @IBOutlet weak var scheduleOrderImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTabViewController()
        setUpHomeButtuns()
    }
    
    // MARK: - SetUp Methods
    
    func setUpTabViewController() {
        self.tabBarController?.tabBar.tintColor = .white
        self.tabBarController?.tabBar.unselectedItemTintColor = UIColor(red: 71/255, green: 73/255, blue: 61/255, alpha: 1.0)
        self.tabBarController?.tabBar.frame.size.height = 100
        self.tabBarController?.tabBar.backgroundColor = UIColor(red: 185/255, green: 179/255, blue: 153/255, alpha: 1.0)
        self.tabBarController?.tabBar.layer.masksToBounds = true
        self.tabBarController?.tabBar.isTranslucent = true
        self.tabBarController?.tabBar.layer.cornerRadius = 30
        self.tabBarController?.tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        if let tabBarItem1 = self.tabBarController?.tabBar.items?[0] {
            tabBarItem1.title = "Home"
            tabBarItem1.badgeColor = .red
            tabBarItem1.image = UIImage(systemName: "house.fill")
            tabBarItem1.selectedImage = UIImage(systemName: "house")
        }
        if let tabBarItem1 = self.tabBarController?.tabBar.items?[1] {
            tabBarItem1.title = "Orders"
            tabBarItem1.image = UIImage(systemName: "list.bullet.rectangle.portrait.fill")
            tabBarItem1.selectedImage = UIImage(systemName: "list.bullet.rectangle.portrait")
        }
        if let tabBarItem1 = self.tabBarController?.tabBar.items?[2] {
            tabBarItem1.title = "Profile"
            tabBarItem1.image = UIImage(systemName: "person.fill")
            tabBarItem1.selectedImage = UIImage(systemName: "person")
        }
    }
    
    func setUpHomeButtuns() {
        bookNowView.layer.cornerRadius = 15
        bookNowView.addShadow()
        let bookNowTap = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.bookNowTapped))
        bookNowView.addGestureRecognizer(bookNowTap)
        
        scheduleOrderView.layer.cornerRadius = 15
        scheduleOrderView.addShadow()
        let scheduleOrderTap = UITapGestureRecognizer(target: self, action: #selector(HomeViewController.scheduleOrderTapped))
        scheduleOrderView.addGestureRecognizer(scheduleOrderTap)
    }
    
    @objc private func bookNowTapped(){
        navigationController?.pushVC(storyboard: UIStoryboard.bookNow, VCIdetifier: "BookNowViewController", animated: true)
    }
    
    @objc private func scheduleOrderTapped(){
        navigationController?.pushVC(storyboard: UIStoryboard.orderDetails, VCIdetifier: "OrderDetailsViewController", animated: true)
    }
}

