//  HomeViewController.swift
//NB

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var ProfileView: UIView!
    @IBOutlet weak var ProfileImageView: UIImageView!
    @IBOutlet weak var AboutUsView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
