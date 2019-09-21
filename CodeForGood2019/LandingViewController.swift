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
    
    @IBAction func parentsAction(_ sender: Any) {
        performSegue(withIdentifier: "parentIdentificationSegue", sender: self)
    }
    
    @IBAction func kidsAction(_ sender: Any) {
        
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
