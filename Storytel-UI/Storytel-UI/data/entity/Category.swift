//
//  Category.swift
//  Storytel-UI
//
//  Created by Ecem Akçay on 20.08.2023.
//

import Foundation

class Category {
    var categoryName: String?
    var categoryImage: String?
    var books: [Book] = []
    
    init(){
        
    }
    
    init(categoryName: String? = nil,categoryImage: String? = nil, books: [Book] = []) {
        self.categoryName = categoryName
        self.categoryImage = categoryImage
        self.books = books
    }
}
