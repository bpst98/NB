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
let count = FileContent?.count

class DownloadTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(newpath)
        
        print("Number of files in storage : ",count! )

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return savedNotes.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }


}

//MARK:- Loading PDF file from directory

extension DownloadTableViewController{


    
    
}
