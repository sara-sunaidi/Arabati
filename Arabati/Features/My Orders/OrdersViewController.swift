//
//  OrdersViewController.swift
//  Arabati
//
//  Created by Sara Alsunaidi on 04/12/2022.
//

import UIKit

class OrdersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var numberOfOrders: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
        registerTableViewCells()
    }
    
    private func setUpTableView() {
        tableView.rowHeight = UITableView.automaticDimension;
        tableView.estimatedRowHeight = 115.0;
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
        numberOfOrders.text = "( ٤ )"
    }
    
    private func registerTableViewCells() {
        tableView.register(UINib(nibName: OrdersTableViewCell.nibName,
                                 bundle: nil),
                           forCellReuseIdentifier: "OrdersTableViewCell")
        
    }
    
}

// MARK: - Table View Datasource and Delegate

extension OrdersViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrdersTableViewCell") as! OrdersTableViewCell
        
        let currentOrder = orderType.allCases[indexPath.row]
        cell.setOrder(from: currentOrder)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row > 1 {return}
        navigationController?.pushVC(storyboard: UIStoryboard.orderDetails, VCIdetifier: "OrderDetailsViewController", animated: true)
    }
}
