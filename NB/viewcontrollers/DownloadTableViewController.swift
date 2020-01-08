//
//  SubjectTableTableViewController.swift
//  NB


import UIKit

var savedNotes = [SavedNotes]()

var newpath = FileDirectory.documentsURL
var fileContent = (try? FileManager.default.contentsOfDirectory(atPath : newpath.first!))
var singleUrl = newpath.first!

class DownloadTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("newpath : ",newpath)
        print("newpath.first! : ",newpath.first!)
        print("FileContent : ",fileContent as Any)

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateTableData()
        print("Number of files in storage now : ",fileContent?.count as Any )
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fileContent?.count ?? 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = fileContent![indexPath.row]
        cell.detailTextLabel?.text = " : Notes"
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}

extension DownloadTableViewController{
    
    //MARK:- Loading PDF file from directory
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = self.storyboard?.instantiateViewController(withIdentifier: "PDFViewController") as! PDFViewController
        VC.filePath = singleUrl + "/" + fileContent![indexPath.row]
        self.navigationController?.pushViewController(VC, animated: true)
        
    }
    //MARK:- Updating Table data
    func updateTableData(){
        newpath = FileDirectory.documentsURL
        fileContent = (try? FileManager.default.contentsOfDirectory(atPath : newpath.first!))
        self.tableView.reloadData()
    }
    
    //MARK:- Deleting file from directory
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
//            print(singleUrl + "/" + fileContent![indexPath.row] + " : to be deleted ")
//            fileContent?.remove(at: indexPath.row)
//            try! FileManager.default.removeItem(atPath: singleUrl + "/" + fileContent![indexPath.row])
//            tableView.beginUpdates()
//            self.tableView.deleteRows(at: [indexPath], with: .fade)
//            tableView.endUpdates()
            try! FileManager.default.removeItem(atPath: singleUrl + "/" + fileContent![indexPath.row])
            fileContent!.remove(at:indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    
}
