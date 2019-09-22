//
//  ViewController.swift
//  streetRice
//
//  Created by Nes Ab on 9/14/19.
//  Copyright © 2019 nes. All rights reserved.
//

import UIKit


class viewController: UIViewController {
    
    //MARK: - Lifecycle

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .midnightBlackBackground
        // Do any additional setup after loading the view.

        view.addSubview(headerView)
        headerView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}



