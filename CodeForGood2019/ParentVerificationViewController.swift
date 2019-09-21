//
//  ParentVerificationViewController.swift
//  CodeForGood2019
//
//  Created by Nikhil Iyer on 9/20/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit

class ParentVerificationViewController: UIViewController {

    @IBOutlet weak var parentCodeTextField: UITextField!
    @IBOutlet var parentButton: UIButton!
    @IBOutlet var backButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parentCodeTextField.layer.borderColor = Colors.fadedPurple.cgColor
        // Do any additional setup after loading the view.
    }
    
    @IBAction func parentButtonTapped(_ sender: UIButton) {
        if(parentCodeTextField.text! == "500") {
            self.performSegue(withIdentifier: "parentToTabBar", sender: self)
        }
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
