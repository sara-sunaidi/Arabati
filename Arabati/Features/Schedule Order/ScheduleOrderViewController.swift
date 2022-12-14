//
//  ScheduleOrderViewController.swift
//  Arabati
//
//  Created by Madawi Ahmed on 11/05/1444 AH.
//

import UIKit

class ScheduleOrderViewController: UIViewController {
    @IBOutlet weak var dateView: UIView!
    @IBOutlet weak var locationView: UIView!
    @IBOutlet weak var servicesView: UIView!
    @IBOutlet weak var nextButtton: UIButton!
    @IBOutlet weak var checkBox1: UIButton!{
        didSet{
            checkBox1.setImage(UIImage(named:"uncheckedcCheckbox"), for: .normal)
            checkBox1.setImage(UIImage(named:"checkedcCheckbox"), for: .selected)
             }
    }

    @IBOutlet weak var checkBox2: UIButton!{
        didSet{
            checkBox2.setImage(UIImage(named:"uncheckedcCheckbox"), for: .normal)
            checkBox2.setImage(UIImage(named:"checkedcCheckbox"), for: .selected)
             }
    }
    @IBOutlet weak var checkBox3: UIButton!{
        didSet{
            checkBox3.setImage(UIImage(named:"uncheckedcCheckbox"), for: .normal)
            checkBox3.setImage(UIImage(named:"checkedcCheckbox"), for: .selected)
             }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setUpViews()
    }
    
    func setUpViews() {
        navigationItem.title = " "
        dateView.layer.cornerRadius = 20
        locationView.layer.cornerRadius = 20
        servicesView.layer.cornerRadius = 20
        nextButtton.layer.cornerRadius = 20
        nextButtton.addShadow()
    }
    @IBAction func checkBox1(_ sender: UIButton) {
        sender.checkboxAnimation {
    
        }
    }
    
    @IBAction func checkBox2(_ sender: UIButton) {
        sender.checkboxAnimation {
            
        }
    }
    @IBAction func checkBox3(_ sender: UIButton) {
        sender.checkboxAnimation {
    
        }
    }
    @IBAction func nextButton2(_ sender: UIButton) {
        if checkBox3.currentImage == UIImage(named:"checkedcCheckbox"){
            navigationController?.pushVC(storyboard: UIStoryboard.scheduleOrder, VCIdetifier: "ScheduleOrder2ViewController", animated: true)
        }else{
        if checkBox2.currentImage == UIImage(named:"checkedcCheckbox") || checkBox1.currentImage == UIImage(named:"checkedcCheckbox") {
            navigationController?.pushVC(storyboard: UIStoryboard.offers, VCIdetifier: "OffersViewController", animated: true)

            
        }}
    }
}
