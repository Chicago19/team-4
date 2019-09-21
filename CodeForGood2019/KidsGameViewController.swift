//
//  KidsGameViewController.swift
//  CodeForGood2019
//
//  Created by Meghan Johnson on 9/21/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit


class KidGamesViewController: UIViewController {
    
    @IBOutlet weak var controllerView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controllerView.layer.borderColor = UIColor.clear.cgColor
    }
}
