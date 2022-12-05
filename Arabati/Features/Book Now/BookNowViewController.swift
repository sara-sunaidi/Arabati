//
//  BookNowViewController.swift
//  Arabati
//
//  Created by Sara Alsunaidi on 04/12/2022.
//

import UIKit

class BookNowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var CheckBox1: UIButton!{
        didSet{
            CheckBox1.setImage(UIImage(named:"unchecked"), for: .normal)
            CheckBox1.setImage(UIImage(named:"checked"), for: .selected)
             }
    }
    
    @IBAction func CheckBox1(_ sender: UIButton) {
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


