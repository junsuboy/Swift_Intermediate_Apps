//
//  AlertListViewController.swift
//  Drink
//
//  Created by Junsu Jang on 2022/04/14.
//

import UIKit

class AlertListViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibName = UINib(nibName: "AlertListCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "AlertListCell")
    }
    
    @IBAction func addAlertButtonAction(_ sender: Any) {
    }
}
