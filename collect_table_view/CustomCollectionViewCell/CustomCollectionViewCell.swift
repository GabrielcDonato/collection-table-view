//
//  CustomCollectionViewCell.swift
//  collect_table_view
//
//  Created by Premiersoft on 11/09/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var image: UIImageView!
    
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName:self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        image.contentMode = .scaleAspectFill
        
        
        
    }
    
    func setupCell(nameImage: String) {
        image.image = UIImage(named: nameImage)
    }
    
}
