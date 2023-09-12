//
//  CustomTableViewCell.swift
//  collect_table_view
//
//  Created by Premiersoft on 11/09/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var collection: UICollectionView!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib( ) -> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    var listCar: [String] = ["car1","car2","car3"]

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configCollectionView()
    }

    func configCollectionView( ){
        collection.delegate = self
        collection.dataSource = self
        if let layout = collection.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        collection.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
    
}

extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collection.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        
        cell?.setupCell(nameImage: listCar[indexPath.row])
      return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: contentView.frame.width, height: 183)
    }
    
    
}
