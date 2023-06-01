//
//  DetailedArticleVCViewController.swift
//  MVVMPracticeSimpleNewsApp
//
//  Created by DA MAC M1 157 on 2023/06/01.
//

import UIKit

class DetailedArticleVC: UIViewController {
    
    
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var descriptionTextLabel: UILabel!
    
    var titleLbl = " "
    var descriptionLbl =  ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.descriptionTextLabel.text = "\(descriptionLbl)"
        self.titleTextLabel.text = "\(titleLbl)"
    }
    
    
    // MARK: - Navigation


    
}
