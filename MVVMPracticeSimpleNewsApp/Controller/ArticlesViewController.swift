//
//  ViewController.swift
//  MVVMPracticeSimpleNewsApp
//
//  Created by DA MAC M1 157 on 2023/06/01.
//

import UIKit

class ArticlesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var articlesVM: ArticlesViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=apple&from=2023-05-28&to=2023-05-28&sortBy=popularity&apiKey=18929a4d97d347128bf237e9d29fc571") else { return }
        Webservice().getArticles(url: url) { articles in
            if let articles = articles {
                self.articlesVM = ArticlesViewModel(articles: articles)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
}

extension ArticlesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return articlesVM == nil ? 0 : self.articlesVM.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articlesVM.numberOfRowsInSections(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticlesTableViewCell", for: indexPath) as? ArticlesTableViewCell else { return UITableViewCell() }
        
        let articlesVM = self.articlesVM.ArticleAtIndex(indexPath.row)
        cell.titleLabel.text = articlesVM.title
        cell.descriptionLabel.text = articlesVM.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            guard let storyboard = (storyboard?.instantiateViewController(identifier: "DetailedArticleVC")) as? DetailedArticleVC else { return }
        
        let articlesVM = self.articlesVM.ArticleAtIndex(indexPath.row)
        storyboard.titleLbl =  articlesVM.title
        storyboard.descriptionLbl = articlesVM.description
            navigationController?.pushViewController(storyboard, animated: true)
        }
}
