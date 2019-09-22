//
//  headerLabels.swift
//  streetRice
//
//  Created by Nes Ab on 9/20/19.
//  Copyright © 2019 nes. All rights reserved.
//

import UIKit

// header images ===============================
 let headerImageBackground: UIImageView = {
    let bImage = UIImageView()
    bImage.image = #imageLiteral(resourceName: "food5")
    bImage.alpha = 0.9
    bImage.contentMode = .scaleAspectFill
    bImage.clipsToBounds = true
    return bImage
}()

// ** ==========================================
// ** ========= avatar and username ============
// ** ==========================================

// user avatar images ==========================
let profileImageview: UIImageView = {
    let iv = UIImageView()
    iv.image = #imageLiteral(resourceName: "nes")
    iv.contentMode = .scaleAspectFill
    iv.clipsToBounds = true
    iv.layer.borderWidth = 3
    iv.layer.borderColor = UIColor.white.cgColor
    return iv
}()

// username ====================================
let user: UILabel = {
    let user = UILabel()
    user.font = UIFont.preferredFont(forTextStyle: .footnote)
    user.textColor = .white
    user.textAlignment = .center
    user.font = user.font.withSize(25.0)
    user.text = "Nes"
    return user
}()

// ** ==========================================
// ** ========= Edit and Modal button ==========
// ** ==========================================

// modal buttons ===============================
let modalButton: UIButton = {
    let button = UIButton(type: .system)
    button.setImage(#imageLiteral(resourceName: "listIcon").withRenderingMode(.alwaysTemplate), for: .normal)
    button.tintColor = UIColor.white
    
    return button
}()

// edit buttons ================================
let editPage: UIButton = {
    let button = UIButton(type:.system)
    button.widthAnchor.constraint(equalToConstant: 60).isActive = true
    button.heightAnchor.constraint(equalToConstant: 25).isActive = true
    button.layer.cornerRadius = 5
    button.setTitle("Edit", for: .normal)
    button.tintColor = UIColor.white
    button.layer.borderWidth = 1
    button.layer.borderColor = UIColor.white.cgColor
    button.backgroundColor = .gray
    return button
}()

let statusView: UIStackView = {
    
    let view = UIStackView(arrangedSubviews: [Fallowers,Visited,reviews,photos])
    view.backgroundColor = .green
    view.translatesAutoresizingMaskIntoConstraints = false
    view.axis = .vertical
    view.spacing = 13
//    view.alpha = 0.9
    view.distribution = .fill
    
    
    return view
}()

//  fallowers label ============================
let Fallowers: UILabel = {
    let fallowers = UILabel()
    fallowers.font = UIFont(name:"FontAwesome", size:10)
    fallowers.textColor = .white
    fallowers.textAlignment = .center
    fallowers.text = "Fallowers"
    return fallowers
}()

// scanned =====================================
let Visited: UILabel = {
    let Visited = UILabel()
    Visited.font = UIFont(name:"FontAwesome", size:10)
    Visited.textAlignment = .center
    Visited.textColor = .white
    Visited.text = "Scanned"
    return Visited
}()

// reviews =====================================
let reviews: UILabel = {
    let reviews = UILabel()
    reviews.font = UIFont(name:"FontAwesome", size:10)
    reviews.textAlignment = .center
    reviews.textColor = .white
    reviews.text = "Reviews"
    return reviews
}()

// reviews ======================================
let photos: UILabel = {
    let photos = UILabel()
    photos.font = UIFont(name:"FontAwesome", size:10)
    photos.textAlignment = .center
    photos.textColor = .white
    photos.text = "Photos"
    return photos
}()

// ** ==========================================
// ** ========== UINavigation Bat ==============
// ** ==========================================

let navView: UIStackView = {
    
    let view = UIStackView(arrangedSubviews: [Photos,Bookmarks,Reviews,Invite])
    view.backgroundColor = .green
    view.translatesAutoresizingMaskIntoConstraints = false
    view.axis = .horizontal
    view.spacing = 0
    view.alpha = 0.9
    view.distribution = .fillEqually
    
    
    return view
}()

let Reviews: UIButton = {
    let Reviews = UIButton(type:.system)
    Reviews.widthAnchor.constraint(equalToConstant: 100).isActive = true
    Reviews.setTitle("Reviews", for: .normal)
    Reviews.tintColor = UIColor.darkGray
    Reviews.backgroundColor = .white
    
    return Reviews
}()

let Photos: UIButton = {
    let Photos = UIButton(type:.system)
    Photos.widthAnchor.constraint(equalToConstant: 100).isActive = true
    Photos.heightAnchor.constraint(equalToConstant: 25).isActive = true
    Photos.setTitle("Photos", for: .normal)
    Photos.tintColor = UIColor.darkGray
    Photos.backgroundColor = .white
    return Photos
}()

let Invite: UIButton = {
    let Invite = UIButton(type:.system)
    Invite.widthAnchor.constraint(equalToConstant: 100).isActive = true
    Invite.heightAnchor.constraint(equalToConstant: 25).isActive = true
    //    Invite.layer.cornerRadius = 5
    Invite.setTitle("Invites", for: .normal)
    Invite.tintColor = UIColor.darkGray
    Invite.backgroundColor = .white
    return Invite
}()

let Bookmarks: UIButton = {
    let Bookmarks = UIButton(type:.system)
    Bookmarks.widthAnchor.constraint(equalToConstant: 100).isActive = true
    Bookmarks.anchor( paddingLeft: 200)
    //    Bookmarks.layer.cornerRadius = 5
    Bookmarks.setTitle("Bookmarks", for: .normal)
    Bookmarks.tintColor = UIColor.darkGray
    Bookmarks.backgroundColor = .white
    return Bookmarks
}()


// ** ==========================================
// ** ====== body layout after navigation ======
// ** ==========================================

// UICollection View ============================
let visitedViewCollectionCell: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    let collection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
    layout.scrollDirection = .horizontal
    collection.showsHorizontalScrollIndicator = false
    collection.backgroundColor = UIColor.white
    collection.translatesAutoresizingMaskIntoConstraints = false
    collection.isScrollEnabled = true
    
    return collection
}()

let picturesTakenViewCollectionCell: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    let picturesCell = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
    layout.scrollDirection = .horizontal
    picturesCell.showsHorizontalScrollIndicator = false
    picturesCell.backgroundColor = UIColor.white
    picturesCell.translatesAutoresizingMaskIntoConstraints = false
    picturesCell.isScrollEnabled = true
    
    return picturesCell
}()


