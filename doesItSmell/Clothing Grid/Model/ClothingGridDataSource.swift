//
//  ClothingTypeCVDataSource.swift
//  doesItSmell
//
//  Created by Jason Ngo on 2018-10-25.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import Foundation
import UIKit

class ClothingGridDataSource: NSObject, UICollectionViewDataSource {
    
    static let cellId = "clothingGridCellId"
    
    let gridElements:[ClothingGridElement] = {
        var gridElements: [ClothingGridElement] = []
        
        let hats = ClothingGridElement(name: "Hats", image: nil)
        let shirts = ClothingGridElement(name: "Shirts", image: nil)
        let underwear = ClothingGridElement(name: "Underwear", image: nil)
        let pants = ClothingGridElement(name: "Pants", image: nil)
        let socks = ClothingGridElement(name: "Socks", image: nil)
        let shoes = ClothingGridElement(name: "Shoes", image: nil)
        
        gridElements = [hats, shirts, underwear, pants, socks, shoes]
        
        return gridElements
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gridElements.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ClothingGridDataSource.cellId, for: indexPath) as! ClothingGridCell
        cell.gridElement = gridElements[indexPath.item]
        return cell
    }
    
}




