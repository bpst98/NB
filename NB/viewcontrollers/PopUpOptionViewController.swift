//
//  PopUpOptionViewController.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 05/09/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import UIKit

//protocol selectedButtonDelegate{
//    func didTapNotes(title:String)
//    func didQandAPapers(title:String)
//    func didTapPraticalFiles(title:String)
//    func didTapEBooks(title:String)
//}

class PopUpOptionViewController: UIViewController {

//    var delegate: selectedButtonDelegate!
        
    @IBOutlet weak var BackButton: UIButton!

    @IBOutlet weak var NotesButton: UIButton!
    @IBOutlet weak var QandAPapersButton: UIButton!
    @IBOutlet weak var PracticalFilesButton: UIButton!
    @IBOutlet weak var EBooksButton: UIButton!
    
    var PopUpItem: POPup!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func BackButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBAction func notesClicked(_ sender: Any) {
//        delegate?.didTapNotes(title: PopUpItem.title)
//        dismiss(animated: true, completion: nil)
        print("Clicked notesCLicked")
        let VC = (storyboard?.instantiateViewController(withIdentifier: "NotesTableViewController") as? NotesTableViewController)!
        self.present(VC, animated: true, completion: nil)
    }
    @IBAction func QandAPapersClicked(_ sender: Any) {
//        delegate?.didQandAPapers(title: PopUpItem.title)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func PracticalFilesClicked(_ sender: Any) {
//        delegate?.didTapPraticalFiles(title: PopUpItem.title)
        dismiss(animated: true, completion: nil)
    }
    @IBAction func EBooksClicked(_ sender: Any) {
//        delegate?.didTapEBooks(title: PopUpItem.title)
        dismiss(animated: true, completion: nil)
    }
    
  
    
}

//extension PopUpOptionViewController{
//
//    func goToNotesTableViewController(){
//        let VC = storyboard?.instantiateViewController(withIdentifier: "NotesTableViewController") as? NotesTableViewController
//
//        self.navigationController?.pushViewController(VC!, animated: true)
//    }
//
//}
