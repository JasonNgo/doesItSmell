//
//  ClothingTypeCollectionViewCell.swift
//  doesItSmell
//
//  Created by Jason Ngo on 2018-10-25.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

class ClothingTypeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var clothingImageView: UIImageView!
    @IBOutlet weak var clothingTitleLabel: UILabel!
    
    var clothingType: ClothingType! {
        didSet {
//            clothingTitleLabel.text = clothingType.name
            
            if let image = clothingType.image {
                clothingImageView.image = image
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .yellow
    }

} // ClothingTypeCollectionViewCell
