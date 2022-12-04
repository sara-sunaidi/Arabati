//
//  ViewController.swift
//  Arabati
//
//  Created by Sara Alsunaidi on 04/12/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BookNowButton: UIButton!
    @IBOutlet weak var ScheduleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        AddShadow(BookNowButton)
        AddShadow(ScheduleButton)
        self.tabBarController?.tabBar.tintColor = .white
        self.tabBarController?.tabBar.unselectedItemTintColor = UIColor(red: 71/255, green: 73/255, blue: 61/255, alpha: 1.0)

        //185, 179, 153
        self.tabBarController?.tabBar.frame.size.height = 100
        self.tabBarController?.tabBar.backgroundColor = UIColor(red: 185/255, green: 179/255, blue: 153/255, alpha: 1.0)
        //UIColor(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)
        //UIColor(red: 0.6157, green: 0.6157, blue: 0.6157, alpha: 1.0)
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
    
    func AddShadow(_ button: UIButton){
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        button.layer.shadowOpacity = 0.8
        button.layer.shadowRadius = 0.0
        button.layer.masksToBounds = false
    }


    @IBAction func BookNow(_ sender: UIButton) {
        
    }
    
    
        
    
    @IBAction func Schedule(_ sender: UIButton) {
    }
}

