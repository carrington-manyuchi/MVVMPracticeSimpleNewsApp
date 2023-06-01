//
//  Article.swift
//  MVVMPracticeSimpleNewsApp
//
//  Created by DA MAC M1 157 on 2023/06/01.
//

import Foundation

// MARK: - Article
struct Article: Codable {
    let author, title: String
    let description: String?
}
