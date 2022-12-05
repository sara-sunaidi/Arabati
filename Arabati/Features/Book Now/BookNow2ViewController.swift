//
//  BookNow2ViewController.swift
//  Arabati
//
//  Created by Shaden Al on 11/05/1444 AH.
//

import UIKit

class BookNow2ViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var locationView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        locationView.layer.cornerRadius = 20
        nextButton.layer.cornerRadius = 20
        previousButton.layer.cornerRadius = 20
        nextButton.addShadow()
        previousButton.addShadow()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextButton(_ sender: UIButton) {
        // to offers list page

    }
    
    @IBAction func previousButton(_ sender: UIButton) {
        navigationController?.popToVC(VCIdetifier:"BookNowViewController" , animated: true)
    }
    
}
