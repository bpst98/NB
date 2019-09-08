//  NotesTableViewCell.swift


import UIKit

class NotesTableViewCell: UITableViewCell {

    @IBOutlet weak var DownloadView: UIView!
    @IBOutlet weak var DownloadViewLabel: UILabel!
    @IBOutlet weak var NotesFileTitle: UILabel!
    @IBOutlet weak var AuthorLabel: UILabel!
    @IBOutlet weak var UploadDateLabel: UILabel!
    @IBOutlet weak var DownloadSizeLabel: UILabel!
    @IBOutlet weak var NumberOfDownloadsLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
