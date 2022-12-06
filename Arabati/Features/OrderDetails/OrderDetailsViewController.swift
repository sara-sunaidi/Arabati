//
//  OrderDetailsViewController.swift
//  Arabati
//
//  Created by Sara Alsunaidi on 05/12/2022.
//

import UIKit
import MapKit

class OrderDetailsViewController: UIViewController {

    @IBOutlet weak var FirstView: UIView!
    @IBOutlet weak var SecondView: UIView!
    @IBOutlet weak var ThirdView: UIView!
    
    @IBOutlet weak var PayButton2: UIButton!
    
    
    @IBOutlet weak var visaButton: UIButton!
    @IBOutlet weak var applePayButton: UIButton!
    @IBOutlet weak var cashButton: UIButton!
    
    @IBOutlet weak var map: MKMapView!
    
    var visa = false
    var applePay = false
    var cash = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpOrderDetailsButtuns()
        
        // Do any additional setup after loading the view.
    }
    
    func setUpOrderDetailsButtuns() {
        FirstView.layer.cornerRadius = 15
        SecondView.layer.cornerRadius = 15
        ThirdView.layer.cornerRadius = 15
        PayButton2.addShadow()
        PayButton2.layer.cornerRadius = 20

        
    }

    func changeSelection(_ button: UIButton){
        
        visaButton.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: UIControl.State.normal)
        applePayButton.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: UIControl.State.normal)
        cashButton.setBackgroundImage(UIImage(named: "uncheckedRadio"), for: UIControl.State.normal)
        
        button.setBackgroundImage(UIImage(named: "checkedRadio"), for: UIControl.State.normal)
        
        
    }
    @IBAction func clickVisa(_ sender: UIButton) {
        changeSelection(visaButton)
        
         visa = true
         applePay = false
         cash = false
    }
    
    @IBAction func clickApplePay(_ sender: UIButton) {
        changeSelection(applePayButton)
        
        visa = false
        applePay = true
        cash = false
    }
    
    @IBAction func clickCash(_ sender: UIButton) {
        changeSelection(cashButton)
        
        visa = false
        applePay = false
        cash = true
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
