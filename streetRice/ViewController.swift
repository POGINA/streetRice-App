//
//  ViewController.swift
//  streetRice
//
//  Created by Nes Ab on 9/14/19.
//  Copyright © 2019 nes. All rights reserved.
//

import UIKit


class viewController: UIViewController {

    let imageData =  [UIImage(named: "food1"),
                      UIImage(named: "food2"),
                      UIImage(named: "food3"),
                      UIImage(named: "food4"),
                      UIImage(named: "food5")]
    
    let picturesTakenData = [UIImage(named: "restuarant1"),
                             UIImage(named: "restuarant2"),
                             UIImage(named: "restuarant3"),
                             UIImage(named: "restuarant4"),
                             UIImage(named: "restuarant5")]
//                             UIImage(named: "restuarant6")]
    
    
    let labelData = ["Restuarant Name","Restuarant Name","Restuarant Name","Restuarant Name","Restuarant Name"]
    let locationDataName = ["location Name","location Name","location Name","location Name","location Name"]
    let likes = ["0 Likes","0 Likes","0 Likes","0 Likes","0 Likes"]
    let comments = ["0 Comments","0 Comments","0 Comments","0 Comments","0 Comments"]

    //MARK: - Lifecycle
    let reuseIdentifierA = "reuseIdentifierA"
    let reuseIdentifierB = "reuseIdentifierB"
    let reuseIdentifierC = "reuseIdentifierC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .midnightBlackBackground
        collectionSetup()
    }
    
    func collectionSetup(){
        visitedViewCollectionCell.delegate = self
        picturesTakenViewCollectionCell.delegate = self
        horizontalViewCollection.delegate = self
        
        visitedViewCollectionCell.dataSource = self
        picturesTakenViewCollectionCell.dataSource = self
        horizontalViewCollection.dataSource = self
        
        
        visitedViewCollectionCell.register(customCell.self,forCellWithReuseIdentifier: reuseIdentifierA)
        picturesTakenViewCollectionCell.register(customCell.self,forCellWithReuseIdentifier: reuseIdentifierB)
        horizontalViewCollection.register(customCell.self,forCellWithReuseIdentifier: reuseIdentifierC)
        
        
        // header body ==========================
        view.addSubview(headerView)
        headerView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}



