//
//  ViewController.swift
//  shooping list
//
//  Created by Jackson Hemme on 12/17/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    @IBOutlet weak var tableView1: UITableView!
    var items:[Item] = []
    override func viewDidLoad()
    {
            tableView1.dataSource = self
        let item1 = Item(name: "Milk")
        let item2 = Item(name: "Eggs")
        items = [item1, item2]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return items.count 
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView1.dequeueReusableCell(withIdentifier: "myCell", for :indexPath); cell.textLabel?.text = items[indexPath.row].name
        return cell
    }
    
}
