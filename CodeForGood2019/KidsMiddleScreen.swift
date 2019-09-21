//
//  KidsMiddleScreen.swift
//  CodeForGood2019
//
//  Created by Deepthi Pittala on 9/21/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit

class KidsMiddleScreenViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var coloringBook: UIButton!
    @IBOutlet weak var games: UIButton!
    @IBOutlet weak var music: UIButton!
    @IBOutlet weak var media: UIButton!
    @IBOutlet weak var qa: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI() {
        print("works")
    }
    
    @IBAction func coloringBookTapped(_ sender: UIButton) {
    }
    @IBAction func gamesTapped(_ sender: UIButton) {
    }
    @IBAction func musicTapped(_ sender: UIButton) {
    }
    @IBAction func mediaTapped(_ sender: UIButton) {
    }
    @IBAction func qaTapped(_ sender: UIButton) {
    }
    
}
