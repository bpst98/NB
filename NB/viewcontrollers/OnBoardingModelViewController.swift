//return the viewcontroller model

import UIKit

class OnBoardingModelViewController: UIViewController {
    
    @IBOutlet weak var scrollView : UIScrollView!
    
    var Pages = [OnBoardingViewController]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        let scrollPage1 = createNewOnboardingscroll(backgroundImageName: "1", text: "Aye Page1 ")
        let scrollPage2 = createNewOnboardingscroll(backgroundImageName: "2", text: "Aye Page2 ")
        let scrollPage3 = createNewOnboardingscroll(backgroundImageName: "3", text: "Aye Page3 ")
        let scrollPage4 = createNewOnboardingscroll(backgroundImageName: "4", text: "Aye Page4 ")
        Pages = [scrollPage1,scrollPage2,scrollPage3,scrollPage4]
        
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
