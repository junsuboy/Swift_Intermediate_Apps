//
//  BeerListViewController.swift
//  Brewary
//
//  Created by Junsu Jang on 2022/04/27.
//

import UIKit

class BeerListViewController: UITableViewController {
    var beerList = [Beer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UINavigationBar
        title = "Brewery"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

// UITableView DataSource, Delegate
extension BeerListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beerList.count
    }
}
