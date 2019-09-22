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

class customCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.backgroundColor = UIColor.red
        image.layer.cornerRadius = 5
        image.layer.opacity = 0.7
        
        return image
    }()
    
    let textLabel: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = .center
        text.textColor = .white
        
        return text
    }()

    
    func setUp(){
        addSubview(imageView)
        addSubview(textLabel)
        
        
        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        textLabel.anchor(top: topAnchor, left: leftAnchor, paddingLeft: 10)
        
//        textLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        textLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 15).isActive = true
//        textLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
