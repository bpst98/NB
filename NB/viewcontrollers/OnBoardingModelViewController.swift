//return the viewcontroller model

import UIKit

class OnBoardingModelViewController: UIViewController {
    
    @IBOutlet weak var scrollView : UIScrollView!
    
    var Pages = [OnBoardingViewController]()
    var views = [String: UIView]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        let scrollPage1 = createNewOnboardingscroll(backgroundImageName: "AppIcon", text: "Aye Page1 ")
        let scrollPage2 = createNewOnboardingscroll(backgroundImageName: "AppIcon", text: "Aye Page2 ")
        let scrollPage3 = createNewOnboardingscroll(backgroundImageName: "AppIcon", text: "Aye Page3 ")
        let scrollPage4 = createNewOnboardingscroll(backgroundImageName: "AppIcon", text: "Aye Page4 ")
        Pages = [scrollPage1,scrollPage2,scrollPage3,scrollPage4]
        
        views = ["scrollPage1":scrollPage1.view,
                 "scrollPage2":scrollPage2.view,
                 "scrollPage3":scrollPage3.view,
                 "scrollPage4":scrollPage4.view]
        
        let vConstraints  = NSLayoutConstraint.constraints(withVisualFormat: "V:|[scrollPage1(==view)]!", options: [], metrics: nil, views: views)
        let hConstraints  = NSLayoutConstraint.constraints(withVisualFormat: "H:|[scrollPage1(==view)][scrollPage2(==view)][scrollPage3(==view)][scrollPage4(==view)]!", options: [.alignAllTop,.alignAllBottom], metrics: nil, views: views)
        NSLayoutConstraint.activate(vConstraints+hConstraints)
    }
    
    
    private func createNewOnboardingscroll(backgroundImageName : String, text:String)->OnBoardingViewController {
        
        let VC = storyboard!.instantiateViewController(withIdentifier: "OnBoardingViewController") as! OnBoardingViewController
        VC.view.translatesAutoresizingMaskIntoConstraints = false
        VC.backgroundImage = UIImage(named: backgroundImageName)
        VC.text = text
        
        scrollView.addSubview(VC.view)
        addChild(VC)
        VC.didMove(toParent: self)
        
        return VC
        
    }
}
