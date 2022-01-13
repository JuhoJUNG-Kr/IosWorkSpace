//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rigthDice: UIImageView!
    
    
    @IBAction func rollButton(_ sender: UIButton) {
        
        let allDice = [UIImage(named: "DiceOne"),
                       UIImage(named: "DiceTwo"),
                       UIImage(named: "DiceThree"),
                       UIImage(named: "DiceFour"),
                       UIImage(named: "DiceFive"),
                       UIImage(named: "DiceSix")
        ]
        
        leftDice.image = allDice[Int.random(in: 0...5)]
        rigthDice.image = allDice[Int.random(in: 0...5)]
    }
    
    



}

