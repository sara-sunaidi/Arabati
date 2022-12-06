//
//  OffersViewController.swift
//  Arabati
//
//  Created by Madawi Ahmed on 12/05/1444 AH.
//

import UIKit

class OffersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var numberOfOrders: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
        setUpTableView()
        registerTableViewCells()
    }
    
    private func setUpViews() {
        numberOfOrders.text = "( ٣ )"
        sendButton.addShadow()
        sendButton.layer.cornerRadius = 20
    }
    
    private func setUpTableView() {
        tableView.rowHeight = UITableView.automaticDimension;
        tableView.estimatedRowHeight = 115.0;
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func registerTableViewCells() {
        tableView.register(UINib(nibName: OffersTableViewCell.nibName,
                                 bundle: nil),
                           forCellReuseIdentifier: "OffersTableViewCell")
    }
    
    @IBAction func sendTapped(_ sender: Any) {
        let alert = UIAlertController(title: "تم ارسال الطلب", message: "تم ارسال طلبك بنجاح", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "حسنا", style: .default))
        self.present(alert, animated: true)
    }
}

// MARK: - Table View Datasource and Delegate

extension OffersViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "OffersTableViewCell") as! OffersTableViewCell
        
        let currentOffer = offersMock.allCases[indexPath.row]
        cell.setOffer(from: currentOffer)
        
        return cell
    }
}

