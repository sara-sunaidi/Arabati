//
//  BookNowViewController.swift
//  Arabati
//
//  Created by Sara Alsunaidi on 04/12/2022.
//

import UIKit

class BookNowViewController: UIViewController {
    @IBOutlet weak var LocationView: UIView!
    @IBOutlet weak var servicesView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        LocationView.layer.cornerRadius = 20
        servicesView.layer.cornerRadius = 20
        nextButton.addShadow()
        nextButton.layer.cornerRadius = 20
    }
    @IBOutlet weak var CheckBox1: UIButton!{
        didSet{
            CheckBox1.setImage(UIImage(named:"uncheckedcCheckbox"), for: .normal)
            CheckBox1.setImage(UIImage(named:"checkedcCheckbox"), for: .selected)
             }
    }
    
    @IBOutlet weak var CheckBox2: UIButton!{
        didSet{
            CheckBox2.setImage(UIImage(named:"uncheckedcCheckbox"), for: .normal)
            CheckBox2.setImage(UIImage(named:"checkedcCheckbox"), for: .selected)
             }
    }
    @IBOutlet weak var CheckBox3: UIButton!{
        didSet{
            CheckBox3.setImage(UIImage(named:"uncheckedcCheckbox"), for: .normal)
            CheckBox3.setImage(UIImage(named:"checkedcCheckbox"), for: .selected)
             }
    }
    @IBAction func CheckBox1(_ sender: UIButton) {
        sender.checkboxAnimation {
    
            //here you can also track the Checked, UnChecked state with sender.isSelected
            print(sender.isSelected)
            
        }
}
    @IBAction func CheckBox2(_ sender: UIButton) {
        sender.checkboxAnimation {
    
            //here you can also track the Checked, UnChecked state with sender.isSelected
            print(sender.isSelected)
            
        }
    }
    @IBAction func CheckBox3(_ sender: UIButton) {
        sender.checkboxAnimation {
    
            //here you can also track the Checked, UnChecked state with sender.isSelected
            print(sender.isSelected)
            
        }
    }
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


