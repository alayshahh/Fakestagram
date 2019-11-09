//
//  PostTableViewCell.swift
//  LogInScreen
//
//  Created by Alay Shah on 11/8/19.
//  Copyright © 2019 Alay Shah. All rights reserved.
//

import UIKit

struct Post{
    let image : UIImage
    let caption: String
    
}

class PostTableViewCell: UITableViewCell {

    var postImage: UIImageView
    var cap: UILabel

    
    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        postImage = UIImageView()
        cap = UILabel()
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpPostImg()
        setCap()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpPostImg() {
        contentView.addSubview(postImage)
        postImage.translatesAutoresizingMaskIntoConstraints = false
        //postImage.backgroundColor = .magenta
        postImage.image = UIImage(named: "cupcake.png")
        let constraints = [
        postImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
        postImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
        postImage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
        postImage.heightAnchor.constraint(equalToConstant: 400)
        ]
        for c in constraints{
            c.isActive=true
        }
        
    }
    func setCap(){
        contentView.addSubview(cap)
        cap.translatesAutoresizingMaskIntoConstraints = false
        
        cap.text="alay"
        
        let constraints = [
            cap.topAnchor.constraint(equalTo: postImage.bottomAnchor, constant: 15),
            cap.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            cap.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            //cap.heightAnchor.constraint(equalToConstant: 20)
        ]
        for c in constraints{
            c.isActive=true
        }
    }
    
    

}
