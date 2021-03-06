//
//  NotesTableViewController.swift
//  Created by Bhanu Pratap Singh Thapliyal on 10/07/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.


import UIKit
import Alamofire

class NotesTableViewController: UITableViewController {
    
    
    let Notes1 = Notes(Author: "Bhanu", Title: "Subject Number 1", Views: 100, Date: "15/11/2018", size: 23, url: "https://noteshub.co.in/uploads/publicuploads/2018/notes/COA_CHEAT%20SHEET2018-04-10%2023:24:23.pdf")
    let Notes2 = Notes(Author: "Aditya", Title: "Subject number 2", Views: 200, Date: "15/12/2018", size: 15, url: "https://noteshub.co.in/uploads/8085_is_details581462a2b0a9e0.20616929.pdf")
    var NotesArray = [Notes]()
    var savedNotes = [SavedNotes]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
        self.title = "NOTES"
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
        cell.DownloadSizeLabel.text = String(NotesArray[indexPath.row].size)+" MB"
        cell.NotesFileTitle.text = NotesArray[indexPath.row].Title
        cell.NumberOfDownloadsLabel.text = String(NotesArray[indexPath.row].Views)+" views"
        cell.UploadDateLabel.text = NotesArray[indexPath.row].Date

        return cell
    }
    //MARK:- when row is selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //MARK:- when Preview is selected
        let actionsheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
    //MARK:- when download is selected
        let download = UIAlertAction(title: "DOWNLOAD", style: .default){action in
            self.fetch(url: self.NotesArray[indexPath.row].url,filename: self.NotesArray[indexPath.row].Title)
        }
    //MARK:- when Preview is selected
        let preview = UIAlertAction(title: "PREVIEW", style: .default){
            action in
        }
        actionsheet.addAction(download)
        actionsheet.addAction(preview)
        actionsheet.addAction(cancel)
        actionsheet.updateViewConstraints()
        present(actionsheet, animated: true, completion: nil)
        
    }
 


}

    // MARK:-  For downloading PDF

extension NotesTableViewController : selectedButtonDelegate{
    func didTapNotes(title: String) {
        print("ok")
    }
    
    func didQandAPapers(title: String) {
        print("ok")
    }
    
    func didTapPraticalFiles(title: String) {
        print("ok")
    }
    
    func didTapEBooks(title: String) {
        print("ok")
    }
    
    
    func fetch(url: String,filename: String){
        
    //    let destination = DownloadRequest.suggestedDownloadDestination(for: .documentDirectory)
        let destination : DownloadRequest.DownloadFileDestination = {temporaryfileURL,HTTPresponse in  FileDirectory.documentsURL
            let fileurl = URL(fileURLWithPath: FileDirectory.documentsURL[0]).appendingPathComponent((filename)+".pdf")
            print("FILEURL :" ,fileurl,"\nTITLE: ",filename)
            self.savedNotes.append(SavedNotes(Title: filename, URLofFile: fileurl))
            
            return(fileurl,[.removePreviousFile,.createIntermediateDirectories])
        }
        Alamofire.download(url,to: destination).responseData{(response) in
//            print(response.error)
        }
        
    }
    
    
}
    
    

