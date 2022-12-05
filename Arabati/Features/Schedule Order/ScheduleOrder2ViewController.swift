//
//  ScheduleOrder2ViewController.swift
//  Arabati
//
//  Created by Shaden Al on 11/05/1444 AH.
//

import UIKit

class ScheduleOrder2ViewController: UIViewController {
    @IBOutlet weak var locationView: UIView!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        locationView.layer.cornerRadius = 20
        nextButton.layer.cornerRadius = 20
        nextButton.addShadow()
        previousButton.layer.cornerRadius = 20
        previousButton.addShadow()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
