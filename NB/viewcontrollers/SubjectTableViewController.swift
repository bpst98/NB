import UIKit

protocol selectedButtonDelegate{
    func didTapNotes(title:String)
    func didQandAPapers(title:String)
    func didTapPraticalFiles(title:String)
    func didTapEBooks(title:String)
}

class SubjectTableViewController: UITableViewController {

    
    @IBOutlet weak var PopupView: UIView!
    @IBOutlet weak var NotesButton: UIButton!
    @IBOutlet weak var QandAPapersButton: UIButton!
    @IBOutlet weak var PracticalFilesButton: UIButton!
    @IBOutlet weak var EBooksButton: UIButton!
    
    
    var SubjectID = [String]()
    var SubjectName = [String]()
    var count = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title = "SUBJECTS"
        parse()
        self.view.isUserInteractionEnabled = true
        
        // self.clearsSelectionOnViewWillAppear = false
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
    }
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let touch = touches.first
//        guard let location = touch?.location(in: self.PopupView) else { return }
//        if !PopupView.frame.contains(location){
//            dismissPopUpview()
//        }
//        else { print("Tapped inside the view")
//        }
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(" SubjectTableViewController :viewDidAppear")
    }
    
    //MARK:-Parse function
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
        self.view.addSubview(PopupView)
        PopupView.center = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        PopupView.isHidden = false
    }

    @IBAction func BackButtonAction(_ sender: Any) {
        PopupView.removeFromSuperview()
    }
    
}

//MARK:- When Buttons are Clicked
extension SubjectTableViewController {
    @IBAction func notesClicked(_ sender: Any) {
        print("Clicked notesCLicked")
        goToNotesTableViewController()
    }
    @IBAction func QandAPapersClicked(_ sender: Any) {
        print("Clicked QandAPapersCLicked")
        goToNotesTableViewController()
    }
    @IBAction func PracticalFilesClicked(_ sender: Any) {
        print("Clicked PracticalFilesCLicked")
    }
    @IBAction func EBooksClicked(_ sender: Any) {
        print("Clicked EbooksCLicked")
    }
}

extension SubjectTableViewController{
//MARK:- Go to NotesTableViewController
    func goToNotesTableViewController(){

        let VC = (storyboard?.instantiateViewController(withIdentifier: "NotesTableViewController") as? NotesTableViewController)!
      //  let nav = UINavigationController(rootViewController: VC)
        self.navigationController?.pushViewController(VC, animated: true)
        
//        let popVC = storyboard?.instantiateViewController(withIdentifier: "PopUpOptionViewController") as? PopUpOptionViewController
//        self.present(popVC!, animated: true, completion: nil)
    }
    

}


