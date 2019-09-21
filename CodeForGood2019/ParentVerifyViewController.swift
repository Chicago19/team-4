//
//  ParentVerifyViewController.swift
//  CodeForGood2019
//
//  Created by Nikhil Iyer on 9/20/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit

class ParentVerifyViewController: UIViewController {

    @IBOutlet weak var codeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func verifyParent(_ sender: Any) {
        if (codeTextField.text! == "500") {
            print("Success")
        }
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
