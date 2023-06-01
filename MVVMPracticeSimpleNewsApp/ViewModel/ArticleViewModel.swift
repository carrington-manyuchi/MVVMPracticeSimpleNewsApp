//
//  ArticleViewModel.swift
//  MVVMPracticeSimpleNewsApp
//
//  Created by DA MAC M1 157 on 2023/06/01.
//

import Foundation

struct ArticleViewModel {
    private let article: Article
    
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description ?? ""
    }
}
