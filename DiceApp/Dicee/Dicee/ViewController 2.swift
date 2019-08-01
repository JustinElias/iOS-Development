//
//  ViewController.swift
//  Dicee
//
//  Created by Justin Elias on 7/30/19.
//  Copyright © 2019 Justin Elias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //constatn array that starts counting at 0
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    //var NameOfVariable: type of variable = value
    var RandomDiceIndex1: Int = 0
    var RandomDiceIndex2: Int = 0
    
    //IBoutlet: changes appearance of UI element
    
    //Common error: if you want to rename/delete something, you can't do it in the code file. If you rename it, you will have to delete the old code from XML source code. If you don't want to do that, right click on the image and click the cross to break the link.
    
    //right click the name-> refactor -> rename
    
    //UIBuilder variable named DiceImageView1 with type UIImageView
    @IBOutlet weak var DiceImageView1: UIImageView!
    
    //UIBuild variable named DiceImageView2 with the type UIImageView
    @IBOutlet weak var DiceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // only gets triggered when the screen loads up
        updateDiceImages()
        
    }
    
    //detect when motion event has started and then ends
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    //Touch inside: user pressed inside the button and let go
    //IBAction: notifies code when button is interacted with
    @IBAction func RollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        //creates new whole numbers between 0 and 5 for RandomDiceIndex1
        RandomDiceIndex1 = Int.random(in: 0 ... 5)
        
        //creates new whole numbers between 0 and 5 for RandomDiceIndex2
        RandomDiceIndex2 = Int.random(in: 0 ... 5)
        
        //randomly choose a member of diceArray with RandomDiceIndex
        DiceImageView1.image = UIImage(named: diceArray[RandomDiceIndex1])
        DiceImageView2.image = UIImage(named: diceArray[RandomDiceIndex2])
    }
    
}

