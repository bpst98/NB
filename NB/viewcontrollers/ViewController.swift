//
//  ViewController.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 17/01/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    @IBOutlet weak var SelectSemesterTextField: UITextField!
    @IBOutlet weak var SelectBranchTextField: UITextField!
    
    let  selectionpicker = [["first","second","third","fourth","fifth","sixth","seventh","eighth"],["CSE","IT","EEE","ECE","MAE","CIVIL","CHEMICAL","ICE","BIO CHEMICAL","TOOL","MECHANTRONICS","ELECTRICAL"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addToolBar()
        setPlaceHolderTextandInputView()
        SetupLogin()
        
    }
    
    func setPlaceHolderTextandInputView(){
        let pickerView = UIPickerView()
        pickerView.delegate = self
        SelectSemesterTextField.inputView = pickerView
        SelectBranchTextField.inputView = pickerView
        SelectSemesterTextField.placeholder = "Select Semester"
        SelectBranchTextField.placeholder = "Select Branch"
    }
    
    func SetupLogin(){
        
        let signInButton = GIDSignInButton(frame: CGRect(x: 0,y: 0,width: 100,height: 100))
        signInButton.center = view.center
        
        view.addSubview(signInButton)
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
        SelectSemesterTextField.text = selectionpicker[0][pickerView.selectedRow(inComponent: 0)]
        SelectBranchTextField.text = selectionpicker[1][pickerView.selectedRow(inComponent: 1)]
    }
    
}

extension ViewController{
    
    func addToolBar(){
        let ToolBar = UIToolbar()
        ToolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Select", style: .done, target: self, action: #selector(ViewController.dismissKeyboard))
        
        ToolBar.setItems([doneButton], animated: false)
        ToolBar.isUserInteractionEnabled = true
        SelectSemesterTextField.inputAccessoryView = ToolBar
        SelectBranchTextField.inputAccessoryView = ToolBar
        
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)    }
    
}


