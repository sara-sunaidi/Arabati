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
        
        setUpViews()
    }
    
    func setUpViews() {
        locationView.layer.cornerRadius = 20
        nextButton.layer.cornerRadius = 20
        previousButton.layer.cornerRadius = 20
        nextButton.addShadow()
        previousButton.addShadow()
        navigationItem.title = " "
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        navigationController?.pushVC(storyboard: UIStoryboard.offers, VCIdetifier: "OffersViewController", animated: true)
    }
    
    @IBAction func previousButton(_ sender: UIButton) {
        navigationController?.popToVC(VCIdetifier:"BookNowViewController" , animated: true)
    }
    
}
