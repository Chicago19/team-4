//
//  ResourcesViewControllers.swift
//  CodeForGood2019
//
//  Created by Malik Arachiche on 9/20/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit
import SnapKit

class ResourcesViewController: UIViewController {
    
    var resourcesArray: [String] = ["Hi", "hello", "test", "testing"]
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI() {
        //view.backgroundColor = .blue
        print("Got em coach")
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ResourcesTableViewCell.self, forCellReuseIdentifier: "resourcesCell")
        tableView.rowHeight = 150
        
        setConstraints()
    }
    
    func setConstraints() {
        
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }
}

extension ResourcesViewController: UITableViewDelegate {
    
}

extension ResourcesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resourcesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourcesCell", for: indexPath) as! ResourcesTableViewCell
        
        cell.textLabel?.text = resourcesArray[indexPath.row]
        
        return cell
    }
}
