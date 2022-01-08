//
//  ViewController.swift
//  OddEvenGame
//
//  Created by JuhoJung on 08/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerBallCountLbl: UILabel!
    @IBOutlet weak var userBallCountLbl: UILabel!
    
    var comBallsCount: Int = 20
    var userBallsCount: Int = 20
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        computerBallCountLbl.text = String(comBallsCount)
        userBallCountLbl.text = String(userBallsCount)
        
        
    }
    @IBAction func gameStartPressed(_ sender: Any) {
        print("게임시작!")
    }
}

