//
//  SubjectTableTableViewController.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 25/05/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import UIKit

var savedNotes = [SavedNotes]()

let newpath = FileDirectory.documentsURL
let FileContent = (try? FileManager.default.contentsOfDirectory(atPath : newpath.first!))
let count = FileContent!.count

class DownloadTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            let files = try FileManager.default.contentsOfDirectory(atPath: newpath.first!)

            print(files)
        } catch {
            print(error)
        }
        
        
        print(newpath)
        print("Number of files in storage : ",count )

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        print(newpath)
        print("Number of files in storage now : ",count )
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Subject Number 1"
        cell.detailTextLabel?.text = " : Notes"
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }


}

//MARK:- Loading PDF file from directory

extension DownloadTableViewController{
}
