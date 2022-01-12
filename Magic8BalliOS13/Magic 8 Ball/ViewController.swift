//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
    
    
    let ballArray = [UIImage.init(named: "ball1"),
                     UIImage.init(named: "ball2"),
                     UIImage.init(named: "ball3"),
                     UIImage.init(named: "ball4"),
                     UIImage.init(named: "ball5")
    ]
        imageView.image = ballArray[Int.random(in: 0...4)]
        
    }


}

