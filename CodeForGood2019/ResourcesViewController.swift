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
    
    var resourcesArray: [Resource] = [Resource(title: "Hi", detailText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pulvinar ipsum non est varius, ac mattis ligula porttitor. Vivamus elementum massa vitae ligula efficitur, a ornare tortor fermentum. Sed nec est in tellus maximus pharetra quis sed nunc. Pellentesque at blandit purus. Quisque luctus, nunc vestibulum egestas malesuada, libero massa consequat eros, ac mattis ante ipsum vitae erat. Maecenas molestie, libero eu pellentesque commodo, nibh purus molestie nibh, sit amet accumsan diam ligula vel libero. Praesent convallis leo eros, sed cursus tortor cursus quis. Vestibulum accumsan luctus luctus. Cras cursus quis odio sit amet fermentum. Mauris consequat lacus sed mi consectetur, eleifend fermentum lorem varius. Nam dapibus sed lacus ac porttitor. Nulla at mi lacus. Curabitur pellentesque mattis lorem, eu accumsan libero dignissim eu. Pellentesque non ante neque.Maecenas auctor nibh eu nunc posuere, non interdum sapien faucibus. Proin ut dui vel lacus aliquet vulputate et eget diam. Aenean tortor neque, placerat vel fringilla eget, tempus id justo. Quisque et justo sed felis facilisis dignissim a vel turpis."),
                                      Resource(title: "More tests", detailText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum pulvinar ipsum non est varius, ac mattis ligula porttitor. Vivamus elementum massa vitae ligula efficitur, a ornare tortor fermentum. Sed nec est in tellus maximus pharetra quis sed nunc. Pellentesque at blandit purus. Quisque luctus, nunc vestibulum egestas malesuada, libero massa consequat eros, ac mattis ante ipsum vitae erat."),
                                      Resource(title: "Even more tests", detailText: "Maecenas molestie, libero eu pellentesque commodo, nibh purus molestie nibh, sit amet accumsan diam ligula vel libero. Praesent convallis leo eros, sed cursus tortor cursus quis. Vestibulum accumsan luctus luctus. Cras cursus quis odio sit amet fermentum. Mauris consequat lacus sed mi consectetur, eleifend fermentum lorem varius. Nam dapibus sed lacus ac porttitor."),
                                      Resource(title: "Even more tests ya dig", detailText: "Mauris consequat lacus sed mi consectetur, eleifend fermentum lorem varius. Nam dapibus sed lacus ac porttitor. Nulla at mi lacus. Curabitur pellentesque mattis lorem, eu accumsan libero dignissim eu. Pellentesque non ante neque.Maecenas auctor nibh eu nunc posuere, non interdum sapien faucibus. Proin ut dui vel lacus aliquet vulputate et eget diam.")
    ]
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let resource = resourcesArray[indexPath.row]
        self.performSegue(withIdentifier: "resourceDetailSegue", sender: resource)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "resourceDetailSegue") {
            if let vc = segue.destination as? ResourceDetailViewController {
                guard let resource = sender as? Resource else {return}
                vc.res = resource
            }
        }
    }
    
    
}

extension ResourcesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resourcesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourcesCell", for: indexPath) as! ResourcesTableViewCell
        
        cell.textLabel?.text = resourcesArray[indexPath.row].title
        
        return cell
    }
}
