//
//  customView.swift
//  streetRice
//
//  Created by Nes Ab on 9/21/19.
//  Copyright © 2019 nes. All rights reserved.
//

import UIKit

//    @IBOutlet weak var scrollView: UIScrollView!
//    var scrollViewData = [scrollViewDataStruct]()

//scrollViewData = [scrollViewDataStruct.init(title: "first", image: #imageLiteral(resourceName: "food1"), price: "100"),
//                  scrollViewDataStruct.init(title: "second", image:#imageLiteral(resourceName: "food3") ,  price: "100"),
//                  scrollViewDataStruct.init(title: "third", image: #imageLiteral(resourceName: "food2"),  price: "100")]
//
//scrollView.contentSize.width = self.scrollView.frame.width * CGFloat(scrollViewData.count)
//var i = 0
//for data in scrollViewData {
//    let view = customView(frame: CGRect(x: 10 + (self.scrollView.frame.width * CGFloat(i)), y: 80, width: self.scrollView.frame.width / 2.5 , height: self.scrollView.frame.height - 20))
//
//    view.backgroundColor = .red
//    view.imageView.image = data.image
//
//    self.scrollView.addSubview(view)
//
//    //            frame: CGRect.init(origin: CGPoint.init(x: 0, y: 20), size: CGSize.init(width: 0, height: 0))
//    let title = UILabel()
//
//
//    title.text = data.title
//
//
//    title.font = UIFont.boldSystemFont(ofSize: 20)
//
//
//    title.textColor = .red
//
//
//    title.sizeToFit()
//
//
//    if i == 0 {
//        title.center.x = view.center.x
//    }
//    else {
//        title.center.x = view.center.x - self.scrollView.frame.width / 2
//    }
//
//
//    self.scrollView.addSubview(title)
//
//
//    title.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 12)
//
//
//
//    //stays at the bottom
//    i += 1
//}


//class customView: UIView {
//    
//    let imageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.backgroundColor = UIColor.blue
//    
//        return imageView
//    }()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        self.addSubview(imageView)
//        imageView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}

