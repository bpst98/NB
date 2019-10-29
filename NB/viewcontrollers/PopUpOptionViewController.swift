//
//  PopUpOptionViewController.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 05/09/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import UIKit

protocol selectedButtonDelegate{
    func didTapNotes(title:String)
    func didQandAPapers(title:String)
    func didTapPraticalFiles(title:String)
    func didTapEBooks(title:String)
}

class PopUpOptionViewController: UIViewController {

    var delegate: selectedButtonDelegate?
        
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
        delegate?.didTapNotes(title: PopUpItem.title)
    }
    @IBAction func QandAPapersClicked(_ sender: Any) {
        delegate?.didQandAPapers(title: PopUpItem.title)
    }
    @IBAction func PracticalFilesClicked(_ sender: Any) {
        delegate?.didTapPraticalFiles(title: PopUpItem.title)
    }
    @IBAction func EBooksClicked(_ sender: Any) {
        delegate?.didTapEBooks(title: PopUpItem.title)
    }
    
    
    
    
    
}
