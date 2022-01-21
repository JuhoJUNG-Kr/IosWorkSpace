//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by JuhoJung on 21/01/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//


import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let lable =  UILabel()
        lable.text = bmiValue
        lable.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(lable)
    }
}
