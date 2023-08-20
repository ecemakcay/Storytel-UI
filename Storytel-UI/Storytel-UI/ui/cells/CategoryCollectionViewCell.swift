//
//  CategoryCollectionViewCell.swift
//  Storytel-UI
//
//  Created by Ecem Akçay on 20.08.2023.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryImageView: UIImageView!
    
    func configure(with category: Category) {
        categoryImageView.image = UIImage(named:category.categoryImage ?? "defaultCategoryImage")
        categoryImageView.layer.cornerRadius = 15
        categoryImageView.clipsToBounds = true
    
       }
}
