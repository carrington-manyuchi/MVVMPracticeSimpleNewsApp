//
//  ViewController.swift
//  MVVMPracticeSimpleNewsApp
//
//  Created by DA MAC M1 157 on 2023/06/01.
//

import UIKit

class ArticlesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=apple&from=2023-05-28&to=2023-05-28&sortBy=popularity&apiKey=18929a4d97d347128bf237e9d29fc571") else { return }
        
        Webservice().getArticles(url: url) { articles in
            
            if let articles = articles {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
}

extension ArticlesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticlesTableViewCell", for: indexPath) as? ArticlesTableViewCell else { return UITableViewCell() }
        cell.titleLabel.text = "I am a title"
        cell.descriptionLabel.text = "I am a description"
        return cell
    }
}
