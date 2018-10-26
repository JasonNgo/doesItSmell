//
//  ClothingTypeCollectionView.swift
//  doesItSmell
//
//  Created by Jason Ngo on 2018-10-25.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import Foundation
import UIKit

class ClothingTypeCollectionView: UICollectionViewController {
    
    let dataSource = ClothingTypeDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupClothingTypeCollectionView()
    }
    
    func setupClothingTypeCollectionView() {
        collectionView.backgroundColor = .white
        let nib = UINib(nibName: "ClothingTypeCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: ClothingTypeDataSource.cellId)
        collectionView.dataSource = dataSource
        collectionView.delegate = self
    }
}

extension ClothingTypeCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (view.frame.size.width - (3 * 16)) / 2
        return CGSize(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
}


