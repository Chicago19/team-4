//
//  KidsGameDetailViewController.swift
//  CodeForGood2019
//
//  Created by Meghan Johnson on 9/21/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit

class KidsGamesDetailViewController: UIViewController {
    
    @IBOutlet weak var kidsImageView: UIImageView!
    
    var game: Game!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kidsImageView.image = game.image
    }
}