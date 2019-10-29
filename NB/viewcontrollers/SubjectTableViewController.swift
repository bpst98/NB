import UIKit

class SubjectTableViewController: UITableViewController {

    var SubjectID = [String]()
    var SubjectName = [String]()
    var count = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        parse()
        // self.clearsSelectionOnViewWillAppear = false
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    //Parse function
    func parse(){
        let url = Bundle.main.url(forResource: "subjects", withExtension: "json")
        if let url = url{
            let data = try? Data(contentsOf: url)
            do{
                guard let data = data
                else {return}
        
        let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary
                
                let subjectArray = json?.value(forKey: "subjects") as! NSArray
                count = subjectArray.count
                for arrayData in subjectArray {
                    let subject = arrayData as! [String:Any]
                    guard let id = subject["id"]
                        else{return}
                    SubjectID.append(id as! String)
                    guard let title = subject["title"]
                        else{return}
                    SubjectName.append(title as! String)
                }
            }
            catch let error as NSError
            {
                print(error.localizedDescription)
            }
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SubjectTableViewCell
        
        cell.SubjectNameTextLabel.text = SubjectName[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let popVC = storyboard?.instantiateViewController(withIdentifier: "PopUpOptionViewController") as? PopUpOptionViewController
        self.present(popVC!, animated: true, completion: nil)
    }


}
