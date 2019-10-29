//
//  NotesTableViewController.swift
//  Created by Bhanu Pratap Singh Thapliyal on 10/07/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.


import UIKit

class NotesTableViewController: UITableViewController {
    let Notes1 = Notes(Author: "Bhanu", Title: "Subject Number 1", Views: 100, Date: "15/11/2018", size: 23, url: "URL")
    let Notes2 = Notes(Author: "Aditya", Title: "Subject number 1", Views: 200, Date: "15/11/2018", size: 15, url: "URL")
    var NotesArray = [Notes]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NotesTableViewCell
        
        

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    

    

    

}
