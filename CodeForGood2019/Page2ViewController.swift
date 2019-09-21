//
//  ViewController.swift
//  CodeForGood2019
//
//  Created by Malik Arachiche on 9/20/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit

class Page2ViewController: UIViewController {
    
    @IBOutlet weak var page2: UIImageView!
    @IBOutlet weak var temp2: UIImageView!
    
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false
    var im = UIImage(named: "page2")
    

    @IBAction func red(_ sender: Any) {
        color = UIColor.red
    }
    
    @IBAction func black(_ sender: Any) {
        color = UIColor.black
    }
    
    @IBAction func blue(_ sender: Any) {
        color = UIColor.blue
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        swiped = false
        lastPoint = touch.location(in: view)
    }
    
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
        // 1
        UIGraphicsBeginImageContext(view.frame.size)
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        temp2.image?.draw(in: view.bounds)
        
        // 2
        context.move(to: fromPoint)
        context.addLine(to: toPoint)
        
        // 3
        context.setLineCap(.round)
        context.setBlendMode(.normal)
        context.setLineWidth(brushWidth)
        context.setStrokeColor(color.cgColor)
        
        // 4
        context.strokePath()
        
        // 5
        temp2.image = UIGraphicsGetImageFromCurrentImageContext()
        temp2.alpha = opacity
        UIGraphicsEndImageContext()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        
        // 6
        swiped = true
        let currentPoint = touch.location(in: view)
        drawLine(from: lastPoint, to: currentPoint)
        
        // 7
        lastPoint = currentPoint
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !swiped {
            // draw a single point
            drawLine(from: lastPoint, to: lastPoint)
        }
        
        //        // Merge tempImageView into mainImageView
        //        UIGraphicsBeginImageContext(page2.frame.size)
        //        page2.image?.draw(in: view.bounds, blendMode: .normal, alpha: 1.0)
        //        temp2?.image?.draw(in: view.bounds, blendMode: .normal, alpha: opacity)
        //        page2.image = UIGraphicsGetImageFromCurrentImageContext()
        //        UIGraphicsEndImageContext()
        
        //        temp2.image = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //
    //
}
