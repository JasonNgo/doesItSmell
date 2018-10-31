//
//  ClothingTypeCollectionView.swift
//  doesItSmell
//
//  Created by Jason Ngo on 2018-10-25.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import Foundation
import UIKit

class ClothingGridCollectionView: UICollectionViewController {
    
    let dataSource = ClothingGridDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupClothingGridCollectionView()
    }
    
}

// MARK: - Setup

fileprivate extension ClothingGridCollectionView {
    
    func setupClothingGridCollectionView() {
        let clothingGridNib = UINib(nibName: "ClothingGridCell", bundle: nil)
        collectionView.register(clothingGridNib, forCellWithReuseIdentifier: ClothingGridDataSource.cellId)
        collectionView.backgroundColor = .white
        collectionView.dataSource = dataSource
        collectionView.delegate = self
    }
    
}

// MARK: - UICollectionViewDelegateFlowLayout

extension ClothingGridCollectionView: UICollectionViewDelegateFlowLayout {
    
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


