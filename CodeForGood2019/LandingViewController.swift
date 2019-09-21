//
//  LandingViewController.swift
//  CodeForGood2019
//
//  Created by Nikhil Iyer on 9/20/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    @IBOutlet var parentButton: UIButton!
    @IBOutlet var kidsButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parentButton.layer.cornerRadius = 10
        kidsButton.layer.cornerRadius = 10
    }
    
    @IBAction func parentAction(_ sender: Any) {
        self.performSegue(withIdentifier: "parentIdentitySegue", sender: self)
    }
    
    @IBAction func kidAction(_ sender: Any) {
        self.performSegue(withIdentifier: "kidIdentitySegue", sender: self)
    }
}
