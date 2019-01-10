//
//  ViewController.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 04/01/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let semester = [1,2,3,4,5,6,7,8]
    
    let branch = ["IT","CSE","MECHANICAL","CHEMISTRY"]
    
    @IBOutlet weak var SelectSemesterPickerView: UIPickerView!
    
    
    @IBOutlet weak var SelectBranchPickerView: UIPickerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }


}
extension ViewController : UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return semester.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(semester[row])
    }
    
    
}

