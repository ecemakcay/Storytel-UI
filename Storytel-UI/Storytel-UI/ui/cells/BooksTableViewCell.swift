//
//  BooksTableViewCell.swift
//  Storytel-UI
//
//  Created by Ecem Akçay on 19.08.2023.
//

import UIKit

class BooksTableViewCell: UITableViewCell {

    @IBOutlet weak var booksCollectionView: UICollectionView!
    @IBOutlet weak var categoryNameLabel: UILabel!

    
    var books: [Book] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()

        
        booksCollectionView.delegate = self
        booksCollectionView.dataSource = self
        booksCollectionView.reloadData()
        
        let design:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        design.scrollDirection = .horizontal
        booksCollectionView.collectionViewLayout = design
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    @IBAction func BtnSeeAllAct(_ sender: Any) {
    }
}

extension BooksTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return books.count 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BooksCollectionViewCell", for: indexPath) as! BooksCollectionViewCell
        
        let book = books[indexPath.item]
        cell.configure(with: book)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 123, height: 156)
    }
    
}
