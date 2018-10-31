//
//  ClothingGridCell.swift
//  doesItSmell
//
//  Created by Jason Ngo on 2018-10-25.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

class ClothingGridCell: UICollectionViewCell {
    
    @IBOutlet weak var gridElementTitleLabel: UILabel!
    @IBOutlet weak var gridElementImageView: UIImageView!
    
    var gridElement: ClothingGridElement! {
        didSet {
            if let gridElementImage = gridElement.image {
                gridElementImageView.image = gridElementImage
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .yellow
    }

} // ClothingGridCell
