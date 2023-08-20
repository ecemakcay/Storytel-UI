//
//  BooksCollectionViewCell.swift
//  Storytel-UI
//
//  Created by Ecem Akçay on 19.08.2023.
//

import UIKit

class BooksCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionViewImage: UIImageView!
    
    func configure(with book: Book) {
        collectionViewImage.image = UIImage(named: book.bookImage ?? "defaultImage")
        collectionViewImage.layer.cornerRadius = 15
        collectionViewImage.clipsToBounds = true
    
       }
}
