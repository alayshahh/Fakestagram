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
   
    var tableView: UITableView
    var posts: [[String]] = [["post1", "alay", "shah", "post4", "im", "hungry"], ["post11", "alay", "shah", "post14", "im", "hungry"], ["post21", "alay", "shah", "post24", "im", "hungry"]]
    
    init(){
        
        self.tableView = UITableView()
    
        super.init(nibName: nil, bundle: nil)
                
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        

    }
    
func setUpTableView(){
       
       //set table view as subview
       
    view.addSubview(tableView)
       
       //set transautoresizign mask to false
       
    tableView.translatesAutoresizingMaskIntoConstraints=false
       
       //create constraints
       
    let tConstraint = tableView.topAnchor.constraint(equalTo: view.topAnchor)
    let bConstraint = tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    let rConstraint = tableView.rightAnchor.constraint(equalTo: view.rightAnchor)
    let lConstraint =  tableView.leftAnchor.constraint(equalTo: view.leftAnchor)
       
       tConstraint.isActive = true
       bConstraint.isActive = true
       rConstraint.isActive = true
       lConstraint.isActive = true
       
    tableView.delegate=self
    tableView.dataSource=self
    
    //register cells
    
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "postCellId")
    
       

   }
    func numberOfSections(in tableView: UITableView) -> Int {
        return posts.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "section: \(section)"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts[section].count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCellId", for: indexPath)
        cell.textLabel?.text=posts[indexPath.section][indexPath.row]
        
        return cell
    }
      
}

//      STEPS FOR TABLE VIEW
//1. Make instance of UITableView
//2. Add Constraints
//3. Set tableView's delegate and data source
//4. Register cell using  reuseIdentifier
//5. Make FeedViewController confrom to UITableViewDelegate & UITableViewDataSource
