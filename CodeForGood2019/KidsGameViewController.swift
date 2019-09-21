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
    @IBOutlet weak var flowButton: UIButton!
    @IBOutlet weak var sonicButton: UIButton!
    @IBOutlet weak var flowImage: UIImageView!
    @IBOutlet weak var sonicImage: UIImageView!
    
    var kidsArray: [Game] = [Game(name: "Flow", image: UIImage(named: "flow3")!),
                             
                             Game(name: "bubble", image: UIImage(named: "bubbleIconTransparency")!),
                             
                             Game(name: "bike", image: UIImage(named: "bikeIconTransparent")!),
                             
                             Game(name: "helixJump", image: UIImage(named: "helixIconTransparent")!),
                             
                             Game(name: "nails", image: UIImage(named: "nailSalonIconTransparent")!),
                             
                             Game(name: "sonic", image: UIImage(named: "sonicIconTransparent")!),
                             
                             Game(name: "subwaySurfers", image: UIImage(named: "subwayIconTransparent")!),
                             
                             Game(name: "ticTacToe", image: UIImage(named: "ticTacToeIconTransparent")!)
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func flowButtonPressed(_ sender: UIButton) {
        flowImage.isHidden = false;
    }
    
    @IBAction func sonicButtonPressed(_ sender: UIButton){
        sonicImage.isHidden = false;
    }
    
}

