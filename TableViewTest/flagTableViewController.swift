//
//  flagTableViewController.swift
//  TableViewTest
//
//  Created by Anthony Ford on 03/02/2018.
//  Copyright © 2018 Anthony Ford. All rights reserved.
//

import UIKit

class flagTableViewController: UITableViewController {
    var segueIndex = -1
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flagArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "flag") as! flagTableViewCell
        cell.nameLabel?.text = flagArray[indexPath.row][1]
        cell.imageView?.image = UIImage(named: flagArray[indexPath.row][0])
        

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        segueIndex = indexPath.row
        performSegue(withIdentifier: "flagToInfo", sender: self)
    }
 
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "flagToInfo"{
            if let destination = segue.destination as? infoViewController{
                destination.incomingIndex = segueIndex
            }
        }
    }
}
