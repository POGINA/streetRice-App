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
    
    let labelData = ["first","second","third","fourth","fifth"]

    //MARK: - Lifecycle
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        


        view.backgroundColor = .midnightBlackBackground
        // Do any additional setup after loading the view.
        viewCollection.delegate = self
        viewCollection.dataSource = self
        viewCollection.register(customCell.self,forCellWithReuseIdentifier: cellID)
        view.addSubview(headerView)
        headerView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}



