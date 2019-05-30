//
//  SubjectTableViewCell.swift
//  NB
//
//  Created by Bhanu Pratap Singh Thapliyal on 30/05/19.
//  Copyright © 2019 Bhanu Pratap Singh Thapliyal. All rights reserved.
//

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


