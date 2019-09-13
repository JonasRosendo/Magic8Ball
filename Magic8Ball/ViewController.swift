//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Jonas Rosendo on 13/09/2019.
//  Copyright © 2019 Jonas Rosendo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bt_ask: UIView!
    @IBOutlet weak var iv_ball: UIImageView!
    
    let ballImageList = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomNewBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonAskPressed(_ sender: UIButton) {
        randomNewBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomNewBallImage()
    }
    
    func randomNewBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        iv_ball.image = UIImage(named: ballImageList[randomBallNumber])
    }
}
