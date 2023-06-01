//
//  ArticlesViewModel.swift
//  MVVMPracticeSimpleNewsApp
//
//  Created by DA MAC M1 157 on 2023/06/01.
//

import Foundation



struct ArticlesViewModel {
    let articles: [Article]
}

extension ArticlesViewModel {
    
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSections(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func ArticleAtIndex(_ indexPath: Int) -> ArticleViewModel {
        let article = self.articles[indexPath]
        return ArticleViewModel(article)
    }
}
