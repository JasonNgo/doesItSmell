//
//  ClothingTypeCVDataSource.swift
//  doesItSmell
//
//  Created by Jason Ngo on 2018-10-25.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import Foundation
import UIKit

class ClothingTypeDataSource: NSObject, UICollectionViewDataSource {
    
    static let cellId = "clothingTypeCellId"
    
    let clothingTypes:[ClothingType] = {
        var clothingTypes: [ClothingType] = []
        
        let hats = ClothingType(name: "Hats", image: nil)
        let shirts = ClothingType(name: "Shirts", image: nil)
        let underwear = ClothingType(name: "Underwear", image: nil)
        let pants = ClothingType(name: "Pants", image: nil)
        let socks = ClothingType(name: "Socks", image: nil)
        let shoes = ClothingType(name: "Shoes", image: nil)
        
        clothingTypes = [hats, shirts, underwear, pants, socks, shoes]
        
        return clothingTypes
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clothingTypes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ClothingTypeDataSource.cellId, for: indexPath) as! ClothingTypeCollectionViewCell
        cell.clothingType = clothingTypes[indexPath.item]
        return cell
    }
    
}
