//
//  ViewController.swift
//  Todoey
//
//  Created by Nguyễn Ngọc Thành on 4/22/19.
//  Copyright © 2019 Nguyễn Ngọc Thành. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["A", "B", "C"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK - Tableview DataSource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    //MARK - TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.cellForRow(at: indexPath)?.accessoryType != tableView.cellForRow(at: indexPath)?.accessoryType
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
}

