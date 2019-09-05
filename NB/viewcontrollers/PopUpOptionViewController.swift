//
//  PopUpOptionViewController.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 05/09/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import UIKit

class PopUpOptionViewController: UIViewController {

    @IBOutlet weak var PopUpSubView: UIView!
    @IBOutlet weak var Notes: UIButton!
    @IBOutlet weak var QuestionPapers: UIButton!
    @IBOutlet weak var PracticalFiles: UIButton!
    @IBOutlet weak var EBooks: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setConstaints()

    }
    
    
    func setConstaints(){
        
        let yconstraint = (self.view.frame.size.height-self.view.frame.size.width)/2
        
        PopUpSubView.frame = CGRect(x: 0, y: yconstraint, width: self.view.frame.size.width, height: self.view.frame.size.width)
        
    }
}
