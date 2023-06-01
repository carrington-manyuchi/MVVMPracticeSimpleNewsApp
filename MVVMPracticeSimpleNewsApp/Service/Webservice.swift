//
//  Webservice.swift
//  MVVMPracticeSimpleNewsApp
//
//  Created by DA MAC M1 157 on 2023/06/01.
//

import Foundation

struct Webservice {
    
    func getArticles(url: URL, completion: @escaping ( [Any]?) -> Void) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print(data)
            }
        }.resume()
    }
}
