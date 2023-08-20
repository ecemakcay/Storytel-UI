//
//  ViewController.swift
//  Storytel-UI
//
//  Created by Ecem Akçay on 19.08.2023.
//

import UIKit

class HomePageViewController: UIViewController {
    @IBOutlet weak var booksTableView: UITableView!

    var bookInfo = BookInfos.bookInfos
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        booksTableView.delegate = self
        booksTableView.dataSource = self
        booksTableView.reloadData()
    }
}

extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return bookInfo.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryTableViewCell", for: indexPath) as! CategoryTableViewCell
            
           let category = bookInfo[indexPath.section]
            cell.categories = [category]
            
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BooksTableViewCell", for: indexPath) as! BooksTableViewCell
            
            let category = bookInfo[indexPath.section]
            cell.categoryNameLabel.text = category.categoryName
            
            cell.books = category.books
            return cell
        }
    }
}
