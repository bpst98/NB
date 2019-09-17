//  OnBoardingViewController.swift
//  NB

import UIKit

class OnBoardingViewController: UIViewController {

    
    @IBOutlet private weak var backgroundImageView : UIImageView!
    @IBOutlet private weak var textLabel : UILabel!
    
    var backgroundImage : UIImage?
    var text : String?
    
    override func viewDidLoad() {
        
        super.viewWillAppear(true)
        
        backgroundImageView.image = backgroundImage
        if let text = text {
            let font = UIFont(name: "HelveticaNeue-Light", size: 20.0)
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 8
            paragraphStyle.alignment = .center
            
            textLabel.attributedText = NSAttributedString(string: text, attributes: [NSAttributedString.Key.font: font , NSAttributedString.Key.paragraphStyle : paragraphStyle])
            
        }

    }

    
    
}
