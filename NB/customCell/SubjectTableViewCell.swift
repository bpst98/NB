//  SubjectTableViewCell.swift


import UIKit

class SubjectTableViewCell: UITableViewCell {

    @IBOutlet weak var SubjectNameTextLabel: UILabel!
    @IBOutlet weak var SideIconImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(){
        SideIconImage.image = #imageLiteral(resourceName: "CellImage")
    }
    
    }


