//
//  ViewController.swift
//  tableViewHw
//
//  Created by Flavius Bortas on 8/27/18.
//  Copyright © 2018 Flavius Bortas. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var checklistItems = ["Watch The Office", "Eat some alfredo", "Learn Git :(", "Go to the Gym", "Go to bed"]
    var numberOfRows = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checklistItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        cell.textLabel?.text = checklistItems[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            checklistItems.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
    
}


