//
//  HistoryViewController.swift
//  HealthyAppVol1
//
//  Created by klant on 4/8/18.
//  Copyright © 2018 klant. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
  
    @IBOutlet weak var runTableView: UITableView!
    
    let date = ["22/04/2018", "23/04/2018", "24/04/2018"]
    let distance = [99.99, 87.89, 12.34]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        runTableView.delegate = self
        runTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return date.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = runTableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = date[indexPath.row]
        cell?.detailTextLabel?.text = "\(distance[indexPath.row])"
        
        return cell!
    }
}

