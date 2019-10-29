//
//  NotesTableViewController.swift
//  Created by Bhanu Pratap Singh Thapliyal on 10/07/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.


import UIKit

class NotesTableViewController: UITableViewController {
    
    let Notes1 = Notes(Author: "Bhanu", Title: "Subject Number 1", Views: 100, Date: "15/11/2018", size: 23, url: "URL")
    let Notes2 = Notes(Author: "Aditya", Title: "Subject number 2", Views: 200, Date: "15/12/2018", size: 15, url: "URL")
    var NotesArray = [Notes]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        NotesArray.append(Notes1)
        NotesArray.append(Notes2)

    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return NotesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NotesTableViewCell
        
        cell.AuthorLabel.text = NotesArray[indexPath.row].Author
        cell.DownloadSizeLabel.text = String(NotesArray[indexPath.row].size)
        cell.NotesFileTitle.text = NotesArray[indexPath.row].Title
        cell.NumberOfDownloadsLabel.text = String(NotesArray[indexPath.row].Views)
        cell.UploadDateLabel.text = NotesArray[indexPath.row].Date

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

//extension NotesTableViewController : selectedButtonDelegate{
//    func didTapNotes(title: String) {
//        
//    }
//    
//    func didQandAPapers(title: String) {
//        
//    }
//    
//    func didTapPraticalFiles(title: String) {
//        
//    }
//    
//    func didTapEBooks(title: String) {
//        
//    }
//    
//    
//}
