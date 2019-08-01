//
//  ViewController.swift
//  Magic Eight Ball
//
//  Created by Justin Elias on 8/1/19.
//  Copyright © 2019 Justin Elias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
/*Variable*/
    //create an array to hold the ball images
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallImage: Int = 0

/*Link Image*/
    @IBOutlet weak var mainMagicEightBall: UIImageView!

/*Load Screen*/
    override func viewDidLoad() {
        super.viewDidLoad()
        randomAnswer()
    }

/*Link Button*/
    @IBAction func askButton(_ sender: UIButton) {
        randomAnswer()
    }

/*Function*/
    func randomAnswer(){
        randomBallImage = Int.random(in: 0 ... 4)
        
        mainMagicEightBall.image = UIImage(named: ballArray[randomBallImage])
        
    }
    
}

