
import UIKit


// MARK: - Properties

 var headerView: UIView = {
    let view = UIView()
    
    // header image
    view.addSubview(headerImageBackground)
    headerImageBackground.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor , height: 230)
    
    // user avatar
    view.addSubview(profileImageview)
    profileImageview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    profileImageview.anchor(top: view.topAnchor, paddingTop: 80 ,  width: 120, height: 120)
    profileImageview.layer.cornerRadius = 120 / 2
    
    // username
    view.addSubview(user)
    user.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    user.anchor(top: profileImageview.bottomAnchor)
    
    // modal Button
    view.addSubview(modalButton)
    modalButton.anchor(top: headerImageBackground.topAnchor, left: headerImageBackground.leftAnchor, paddingTop: 64, paddingLeft: 32, width: 32, height: 32)
    
    // edit button
    view.addSubview(editPage)
    editPage.anchor(left: headerImageBackground.leftAnchor, bottom: headerImageBackground.bottomAnchor, paddingLeft: 32, paddingBottom: 32)
    
    // user status view
    view.addSubview(statusView)
    statusView.anchor(top: headerImageBackground.topAnchor, right: headerImageBackground.rightAnchor, paddingTop: 70, paddingRight: 32, height: 130)
    
    // navigation view
    view.addSubview(navView)
    navView.anchor(top: headerImageBackground.bottomAnchor, left: headerImageBackground.leftAnchor, right: headerImageBackground.rightAnchor, paddingTop: 5, height: 40)
    
    // UICollection view layout for visited
    view.addSubview(viewCollection)
    viewCollection.anchor(top: navView.bottomAnchor, left: navView.leftAnchor, right: navView.rightAnchor, paddingTop: 5, height: 400)
    
    return view
}()

