//
//  LandingViewController.swift
//  CodeForGood2019
//
//  Created by Nikhil Iyer on 9/20/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func parentAction(_ sender: Any) {
        self.performSegue(withIdentifier: "parentIdentitySegue", sender: self)
    }
    
    @IBAction func kidAction(_ sender: Any) {
        self.performSegue(withIdentifier: "kidIdentitySegue", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
