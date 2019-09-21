//
//  AgesViewController.swift
//  CodeForGood2019
//
//  Created by Deepthi Pittala on 9/20/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//
import UIKit

class AgesViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var infantButton: UIButton!
    @IBOutlet weak var toddlerButton: UIButton!
    @IBOutlet weak var preteenButton: UIButton!
    @IBOutlet weak var teenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        
    }
    
    func setUpUI() {
        print("hi")
    }
    @IBAction func infantButtonTapped(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "coloringBookSegue", sender: self)
        print("infant")
    }
    @IBAction func toddlerButtonTapped(_ sender: UIButton) {
        print("toddler")
    }
    @IBAction func preteenButtonTapped(_ sender: UIButton) {
        print("preteen")
        self.performSegue(withIdentifier: "kidsMiddleSegue", sender: self)
    }
    @IBAction func teenButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "kidsMiddleSegue", sender: self)
        print("teen")
    }
    
}
