//
//  SubjectTableTableViewController.swift
//  NB


import UIKit

var savedNotes = [SavedNotes]()

var newpath = FileDirectory.documentsURL
var FileContent = (try? FileManager.default.contentsOfDirectory(atPath : newpath.first!))
var SingleUrl = newpath.first!

class DownloadTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("newpath : ",newpath)
        print("newpath.first! : ",newpath.first!)
        print("FileContent : ",FileContent)

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        updateTableData()
        self.tableView.reloadData()
        print("Number of files in storage now : ",FileContent!.count )
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return FileContent?.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = FileContent![indexPath.row]
        cell.detailTextLabel?.text = " : Notes"
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    

}

extension DownloadTableViewController{
    
    //MARK:- Updating Table data
    func updateTableData(){
         newpath = FileDirectory.documentsURL
         FileContent = (try? FileManager.default.contentsOfDirectory(atPath : newpath.first!))
    }
    
    //MARK:- Deleting file from directory
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        print(SingleUrl)
        try! FileManager.default.removeItem(atPath: SingleUrl + "/" + FileContent![indexPath.row])
        tableView.deleteRows(at: [indexPath], with: .fade)
    }

    
    //MARK:- Loading PDF file from directory
}
