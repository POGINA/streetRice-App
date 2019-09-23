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

    let likes: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.textColor = UIColor.black
        text.font = text.font.withSize(13)
        text.layer.cornerRadius = 5
        
        return text
    }()
    
    let comments: UILabel = {
        let comments = UILabel()
        comments.translatesAutoresizingMaskIntoConstraints = false
//        comments.textAlignment = .center
        comments.font = comments.font.withSize(13)
//        comments.setTitleColor(UIColor.black, for: .normal)
//        comments.font = text.font.withSize(25)
        comments.layer.cornerRadius = 5
        
        return comments
    }()
    
    func setUp(){
        addSubview(visitedImages)
        addSubview(picturesTaken)
        addSubview(textLabel)
        addSubview(locationName)
        addSubview(likes)
        addSubview(comments)
        
        visitedImages.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor,paddingTop: 35, width: 90, height: 100)
        picturesTaken.anchor(top: topAnchor, left: leftAnchor ,right: rightAnchor, paddingBottom: 25, height: 200)
//        picturesTaken.anchor( width: 120)
        
        
        textLabel.anchor(top: visitedImages.bottomAnchor)
        locationName.anchor(top: textLabel.bottomAnchor)
        likes.anchor(top: picturesTaken.bottomAnchor)
        comments.anchor(top: picturesTaken.bottomAnchor, left: likes.rightAnchor, paddingLeft: 10)
        
        
        
//        textLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        textLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 5)
//        textLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
