//
//  Username.swift
//  LogInScreen
//
//  Created by Alay Shah on 10/18/19.
//  Copyright © 2019 Alay Shah. All rights reserved.
//

import Foundation
import UIKit //lib in swift that contains all objects like buttons text fields labels etc.

class UsernameViewController: UIViewController{
    
    var username: String?
    let usernameLabel: UILabel = UILabel()
    let navigate: UIButton = UIButton()
    
    init (username:String){
        self.username = username
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        addLabel()
        addButton()
    }
    func addLabel(){
        view.addSubview(usernameLabel)
        if let username = self.username{
           usernameLabel.text="Hello, \(username)"
        }
       
        usernameLabel.textColor = .systemBlue
        usernameLabel.translatesAutoresizingMaskIntoConstraints=false
        let xConstraint=usernameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let yConstraint=usernameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        xConstraint.isActive=true
        yConstraint.isActive=true
        
    }
    func addButton(){
        view.addSubview(navigate)
        navigate.translatesAutoresizingMaskIntoConstraints=false
        navigate.setTitle("navigate", for: .normal)
        navigate.backgroundColor = .cyan
        navigate.setTitleColor(.darkGray, for: .normal)
        navigate.addTarget(self, action: #selector(navigatorPressed), for: .touchUpInside)
        let xConstraint = navigate.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let yConstraint = navigate.centerYAnchor.constraint(equalTo: usernameLabel.bottomAnchor, constant: 20)
        xConstraint.isActive=true
        yConstraint.isActive=true
        
        
        
        
    }
    @objc
    func navigatorPressed(){
        let viewThreeController = ThreeViewController()
        self.navigationController?.pushViewController(viewThreeController, animated: true)
        //self.navigationController?.popViewController(animated: true)
    }
 
}
