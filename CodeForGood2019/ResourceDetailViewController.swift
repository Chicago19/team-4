//
//  ResourceDetailViewController.swift
//  CodeForGood2019
//
//  Created by Malik Arachiche on 9/21/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit
import SnapKit

class ResourceDetailViewController: UIViewController {
    
    //let label = UILabel()
    
    @IBOutlet var detailTextLabel: UILabel!
    var res : Resource!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailTextLabel.text = res.detailText;
        detailTextLabel.numberOfLines = 25
        detailTextLabel.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 28)
        detailTextLabel.textAlignment = .left
        
        //setUpUI()
    }
    
//    func setUpUI() {
//        view.addSubview(label)
//        setConstraints()
//    }
//
//    func setConstraints() {
//        label.snp.makeConstraints { (make) in
//            make.centerX.centerY.equalTo(self.view)
//        }
//    }
    
    
}
