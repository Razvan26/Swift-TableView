//
//  TableViewController.swift
//  Important
//
//  Created by Razvan26 
//  Copyright © 2018 Razvan26. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var imp = [
    
        Detalis(name: "Tesla Model S", price: "135,000$", image: UIImage(named: "1")!, description: " Luxury electric"),
         Detalis(name: "iPhone X", price: "999$", image: UIImage(named: "2")!, description: "Premium phone"),
         Detalis(name: "Macbook Pro 15", price: "2399$", image: UIImage(named: "3")!, description: "Premium Macbook ")
    ]
    @IBAction func btn(_ sender: Any) {
        let cls = storyboard?.instantiateViewController(withIdentifier: "CLS")
        navigationController?.pushViewController(cls!, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBOutlet var images: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imp.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                    as! headleViewCell
        cell.textLabel?.text = imp[indexPath.row].name
        cell.imageView?.image = imp[indexPath.row].image
        cell.descriptCellLabel.text = imp[indexPath.row].descriptions
        cell.priceCellLabel.text = imp[indexPath.row].price
        // Configure the cell...

        return cell
    }
    


}
class headleViewCell: UITableViewCell {
    @IBOutlet var descriptCellLabel: UILabel!
    
    @IBOutlet var priceCellLabel: UILabel!
}
