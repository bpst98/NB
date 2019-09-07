//
//  PopUpOptionViewController.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 05/09/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import UIKit

class PopUpOptionViewController: UIViewController {

    @IBOutlet weak var BackButton: UIButton!

    @IBOutlet weak var NotesButton: UIButton!
    @IBOutlet weak var QandAPapersButton: UIButton!
    @IBOutlet weak var PracticalFilesButton: UIButton!
    @IBOutlet weak var EBooksButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func BackButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    
}
