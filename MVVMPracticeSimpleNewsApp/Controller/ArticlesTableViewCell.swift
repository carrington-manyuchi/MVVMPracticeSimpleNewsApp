//
//  ArticlesTableViewCell.swift
//  MVVMPracticeSimpleNewsApp
//
//  Created by DA MAC M1 157 on 2023/06/01.
//

import UIKit

class ArticlesTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak  var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
