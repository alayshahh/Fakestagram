//
//  ViewController.swift
//  LogInScreen
//
//  Created by Alay Shah on 10/11/19.
//  Copyright © 2019 Alay Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        let logoView = UIImageView()
        let userNameField = UITextField()
        let passwordField = UITextField()
        let lIbutton = UIButton(type: .system)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        
        //add logo
        addLogo()
        //Add text fields
        addUsername()
        addPassword()
        
        //add log in button
        addLogInButton()
        
        
        
        
        
        
        
        
        
    
        //addLabel(x: "hi, log-in here")
        
        
    }
    func addLabel (x: String ) {
         
        let logInLabel = UILabel()
        
          //addtext
          
          logInLabel.text = x
          
          //add it to the subview
          
           view.addSubview(logInLabel)
          
          //translatesautoresizingmaskintoconstraitns to fasle
          
          logInLabel.translatesAutoresizingMaskIntoConstraints=false
         //set constraints
          
          let xconstraints = logInLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
          let yconstraints = logInLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
          xconstraints.isActive=true
          yconstraints.isActive=true
          logInLabel.textColor = .magenta
    }
 
    func addLogo(){
        //create UIImageView
         
        
        
        //add logo to UIImageView
        logoView.image = UIImage(named: "instagram-logo.png")
        
        
        //add imageView as subview
        view.addSubview(logoView)
        
        //set aspect ratio
        
        logoView.contentMode = .scaleAspectFit
        
        //set transletesAutoresizingMask to false
        logoView.translatesAutoresizingMaskIntoConstraints=false
       
        
        // add constraints
        let topConstraint = logoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80)
        let centerXconstraint = logoView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let widthConstraint = logoView.widthAnchor.constraint(equalToConstant: 250)
        //activate cnstraints
        topConstraint.isActive = true
        centerXconstraint.isActive = true
        widthConstraint.isActive=true
        
    }
    
    func addUsername(){
        //create text field
        
      
        
        //set properties
        userNameField.placeholder = "username"
        userNameField.delegate = self
        userNameField.textAlignment = .center
        
        view.addSubview(userNameField)
        
        userNameField.translatesAutoresizingMaskIntoConstraints=false
        
        let yConstraint = userNameField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20)
        
        let leftConstraint = userNameField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40)
        let rightConstant = userNameField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40)
        
        
        yConstraint.isActive=true
        leftConstraint.isActive=true
        rightConstant.isActive=true
        
        
    }
    func addPassword(){
           //create text field
           
        
           
           //set properties
           passwordField.placeholder = "password"
           passwordField.delegate = self
           passwordField.textAlignment = .center
           passwordField.isSecureTextEntry = true
           
           view.addSubview(passwordField)
           
          passwordField.translatesAutoresizingMaskIntoConstraints=false
           
           let yConstraint = passwordField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
           
           let leftConstraint = passwordField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40)
           let rightConstant = passwordField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40)
           
           
           yConstraint.isActive=true
           leftConstraint.isActive=true
           rightConstant.isActive=true
           
           
       }
    
    func addLogInButton(){
        
  
        lIbutton.setTitle("log in", for: .normal)
        lIbutton.setTitleColor(.white, for: .normal)
        lIbutton.backgroundColor = .blue
        lIbutton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        
        lIbutton.setTitleColor(.systemBlue, for: .selected)
       
        view.addSubview(lIbutton)
        
        lIbutton.translatesAutoresizingMaskIntoConstraints=false
        
        let xConstraint = lIbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        let bottomConstraint = lIbutton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200)
        let leftConstraint = lIbutton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
         let rightConstraint = lIbutton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
       
        xConstraint.isActive=true
        leftConstraint.isActive=true
        bottomConstraint.isActive=true
        rightConstraint.isActive=true
        
        }
    @objc
    func loginButtonPressed() {
        if let username = userNameField.text,
        let password = passwordField.text{
            if (!username.isEmpty && !password.isEmpty){
                 print(username)
                
                let usernameViewController = UsernameViewController(username: username)
                self.navigationController?.pushViewController(usernameViewController, animated:true)
                
                
                
            }else {
                print("not entered")
            }
           
            
        }
        print("button pressed")
    }
   
    }
    
   


extension ViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //dismiss keyboard
        textField.resignFirstResponder()
        
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("editing has started")
    }
}
