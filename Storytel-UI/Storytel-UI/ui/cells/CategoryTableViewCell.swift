//
//  CategoryTableViewCell.swift
//  Storytel-UI
//
//  Created by Ecem Akçay on 20.08.2023.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [Category] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        categoryCollectionView.reloadData()
        

        let design = UICollectionViewFlowLayout()
    
        design.scrollDirection = .horizontal


        categoryCollectionView.collectionViewLayout = design
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}

extension CategoryTableViewCell: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
        
        let category = categories[indexPath.item]
        cell.configure(with: category)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: 370, height: 190)
        }
}

