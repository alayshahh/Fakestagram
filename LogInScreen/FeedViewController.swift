//
//  Username.swift
//  LogInScreen
//
//  Created by Alay Shah on 10/18/19.
//  Copyright © 2019 Alay Shah. All rights reserved.
//

import Foundation
import UIKit //lib in swift that contains all objects like buttons text fields labels etc.

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
  
    var Table : UITableView
    var posts: [Post] = [
        Post(image: UIImage(named: "oreos.png")!, caption: "oreos! :)"),
        Post(image: UIImage(named:"pancakes.png" )!, caption: "panqueque"),
        Post(image: UIImage(named: "cupcake.png")!, caption: "donot"),
        Post(image: UIImage(named: "cookies.png")!, caption: "cookiez")
    ]
    
    init(){
        self.Table = UITableView()
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTable()
    }
    
    func setUpTable() {
        view.addSubview(Table)
        Table.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
        Table.leftAnchor.constraint(equalTo: view.leftAnchor),
        Table.rightAnchor.constraint(equalTo: view.rightAnchor),
        Table.topAnchor.constraint(equalTo: view.topAnchor),
        Table.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ]
        for constraint in constraints{
            constraint.isActive=true
        }
        
        Table.delegate = self
        Table.dataSource = self
        
        Table.register(UITableViewCell.self, forCellReuseIdentifier: "postCellID")
        Table.register(PostTableViewCell.self, forCellReuseIdentifier: "imgCell")
       
        
    }
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      //  let cell = UITableViewCell()
        let cell = Table.dequeueReusableCell(withIdentifier: "imgCell", for: indexPath) as! PostTableViewCell
//        cell.textLabel?.text = posts[indexPath.row]
        cell.postImage.image = posts[indexPath.row].image
        cell.cap.text = posts[indexPath.row].caption
        
        
        
        
        return cell
       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 460
    }
    
    
       
   
    
    
      
}

//      STEPS FOR TABLE VIEW
//1. Make instance of UITableView
//2. Add Constraints
//3. Set tableView's delegate and data source
//4. Register cell using  reuseIdentifier
//       a)

//5. Make FeedViewController confrom to UITableViewDelegate & UITableViewDataSource

//when you conform to UITableViewDataSource you need to implement two fucntions
//1. numberOfRowsInSection
//2. cellForRowAt
//
