//
//  dataStructure.swift
//  streetRice
//
//  Created by Nes Ab on 9/21/19.
//  Copyright © 2019 nes. All rights reserved.
//

import UIKit

extension viewController: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == visitedViewCollectionCell {
            return imageData.count // Replace with count of your data for collectionViewA
        }
        
        return picturesTakenData.count // Replace with count of your data for collectionViewB
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == visitedViewCollectionCell {
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierA, for: indexPath) as UICollectionViewCell as! customCell
            
                cellA.visitedImages.image = picturesTakenData[indexPath.item]
                cellA.textLabel.text = labelData[indexPath.item]
                cellA.locationName.text = locationDataName[indexPath.item]
                cellA.backgroundColor = .clear
                cellA.layer.cornerRadius = 5
            // Set up cell
            return cellA
        }
        else {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierB, for: indexPath) as UICollectionViewCell as! customCell
            
                cellB.picturesTaken.image = imageData[indexPath.item]
                cellB.menuName.text = menuLabel[indexPath.item]
                cellB.backgroundColor = .clear
                cellB.layer.shadowOpacity = 0.5
                cellB.layer.cornerRadius = 5
            
            // ...Set up cell
            
            return cellB
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == visitedViewCollectionCell {

            return CGSize(width: 150, height: 200)
        }
        else {

            
            return CGSize(width: 310, height: 298)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3)
    }
}
