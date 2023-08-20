//
//  Book.swift
//  Storytel-UI
//
//  Created by Ecem Akçay on 19.08.2023.
//

import Foundation

class Book {
    var bookName:String?
    var bookImage:String?
    var bookCategory:String?
    
    
    init(){
        
    }
    
    init(bookName: String? = nil, bookImage: String? = nil, bookCategory:String? = nil) {
        self.bookName = bookName
        self.bookImage = bookImage
        self.bookCategory = bookCategory
    }
}


class BookInfos {
    static let bookInfos: [Category] = [
        Category(categoryName: "Recommended for you", categoryImage: "recommentation" ,books: [
            Book(bookName: "1984", bookImage: "1984"),
            Book(bookName: "Anthem", bookImage: "anthem"),
            Book(bookName: "The Chosen", bookImage: "chosen"),
            Book(bookName: "Antigone", bookImage: "antigone"),
            Book(bookName: "Dune", bookImage: "dune"),
            Book(bookName: "Elon Musk", bookImage: "elonmusk"),
            Book(bookName: "Fahrenheit", bookImage: "fahrenheit"),
            
        ]),
        
        Category(categoryName: "Recommended for you", categoryImage: "recommentation" ,books: [
            Book(bookName: "1984", bookImage: "1984"),
            Book(bookName: "Anthem", bookImage: "anthem"),
            Book(bookName: "The Chosen", bookImage: "chosen"),
            Book(bookName: "Antigone", bookImage: "antigone"),
            Book(bookName: "Dune", bookImage: "dune"),
            Book(bookName: "Elon Musk", bookImage: "elonmusk"),
            Book(bookName: "Fahrenheit", bookImage: "fahrenheit"),
            
        ]),
        Category(categoryName: "Popular first listens",categoryImage: "popular", books: [
            Book(bookName: "Fourth Wings", bookImage: "fourthwings"),
            Book(bookName: "Frankenstein", bookImage: "frankenstein"),
            Book(bookName: "The Housemaid", bookImage: "housemaid"),
            Book(bookName: "The Outsiders", bookImage: "outsiders"),
            Book(bookName: "Kendime Düşünceler", bookImage: "kendimedusunceler"),
            Book(bookName: "Serenad", bookImage: "serenad"),
         
        ]),
        Category(categoryName: "Recently added", categoryImage: "new", books: [
            Book(bookName: "Macbeth", bookImage: "macbeth"),
            Book(bookName: "Night", bookImage: "night"),
            Book(bookName: "Othello", bookImage: "othello"),
            Book(bookName: "The Shining", bookImage: "shining"),
            Book(bookName: "The One", bookImage: "one"),
            Book(bookName: "The Odyssey", bookImage: "odyssey"),
            Book(bookName: "Son Ada", bookImage: "sonada"),
            
        ]),
    ]
}
