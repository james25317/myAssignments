//
//  ViewController.swift
//  TableView
//
//  Created by James Hung on 2021/3/19.
//

import UIKit

class MainViewController: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewItem", for: indexPath)
    
    if let label = cell.viewWithTag(1000) as? UILabel {
      label.text = "This is section \(indexPath.section), row \(indexPath.row)"
    }
    
    return cell
  }


}

