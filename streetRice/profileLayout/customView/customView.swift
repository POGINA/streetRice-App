//
//  customView.swift
//  streetRice
//
//  Created by Nes Ab on 9/21/19.
//  Copyright © 2019 nes. All rights reserved.
//

import UIKit
class customCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    let visitedImages: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
//        image.backgroundColor = UIColor.red
        image.layer.cornerRadius = 5
//        image.layer.shadowOpacity = 1
//        image.layer.opacity = 0.7
        
        return image
    }()
    
    let picturesTaken: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        //        image.backgroundColor = UIColor.red
        image.layer.cornerRadius = 5
                image.layer.shadowOpacity = 0.8
//                image.layer.opacity = 0.7
        
        return image
    }()
    
    let textLabel: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.textColor = .black
        text.font = text.font.withSize(15)
        
        return text
    }()
    
    let locationName: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.textColor = UIColor.darkGray
        text.font = text.font.withSize(10)
        
        return text
    }()

    let menuName: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.textColor = UIColor.white
        text.font = text.font.withSize(25)
        text.layer.cornerRadius = 5
        
        return text
    }()
    
    func setUp(){
        addSubview(visitedImages)
        addSubview(picturesTaken)
        addSubview(textLabel)
        addSubview(locationName)
        addSubview(menuName)
        
        visitedImages.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor,paddingTop: 35, width: 90, height: 100)
        picturesTaken.anchor(left: leftAnchor, bottom: topAnchor, right: rightAnchor, paddingBottom: -290, height: 280)
//        picturesTaken.anchor( width: 120)
        
        
        textLabel.anchor(top: visitedImages.bottomAnchor)
        locationName.anchor(top: textLabel.bottomAnchor)
        menuName.anchor(top: bottomAnchor,paddingTop: -50)
        
        
        
//        textLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5)
//        textLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
