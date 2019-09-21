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
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var navBar: UINavigationBar!
    
    var kidsArray: [Game] = [Game(name: "Flow", image: UIImage(named: "flowIconTransparent")!),
                             
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
        
        
        
        navigationController?.navigationBar.barTintColor = Colors.fadedPurple
        navigationController?.navigationBar.tintColor = .white
        title = "Games"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "kidsGameSegue") {
            if let vc = segue.destination as? KidsGamesDetailViewController {
                guard let game = sender as? Game else { return }
                print("My game: \(game)")
                vc.game = game
            }
        }
    }
    
    @IBAction func flowButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "kidsGameSegue", sender: kidsArray[0])
        
    }
    
    @IBAction func sonicButtonPressed(_ sender: UIButton){
        performSegue(withIdentifier: "kidsGameSegue", sender: kidsArray[5])
        
    }

}

