//
//  ViewController.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 17/01/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var semesterLabel: UILabel!
    @IBOutlet weak var branchLabel: UILabel!
    let  selectionpicker = [["first","second","third","fourth","fifth","sixth","seventh","eighth"],["CSE","IT","EEE","ECE","MAE","CIVIL","CHEMICAL","ICE","BIO CHEMICAL","TOOL","MECHANTRONICS","ELECTRICAL"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
extension ViewController: UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return selectionpicker.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return selectionpicker[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return selectionpicker[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        semesterLabel.text = selectionpicker[0][pickerView.selectedRow(inComponent: 0)]
        branchLabel.text = selectionpicker[1][pickerView.selectedRow(inComponent: 1)]
    }
    
}
