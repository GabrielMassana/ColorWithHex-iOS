//
//  ViewController.swift
//  ColorWithHex
//
//  Created by GabrielMassana on 23/03/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()

    
        let buttonOne: UIButton = UIButton(frame: CGRect.init(x: 0, y: 20, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        buttonOne.setTitle("Short Hex: f80 (ff8800)", forState: .Normal)
        
        view.addSubview(buttonOne)
        
        let buttonTwo: UIButton = UIButton(frame: CGRect.init(x: 0, y: 140, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        buttonTwo.setTitle("Hex with Alpha: ff8800ff", forState: .Normal)
        
        view.addSubview(buttonTwo)
        
        let buttonThree: UIButton = UIButton(frame: CGRect.init(x: 0, y: 260, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        buttonThree.setTitle("Hex with #: #20aa45", forState: .Normal)
        
        view.addSubview(buttonThree)
        
        let buttonFour: UIButton = UIButton(frame: CGRect.init(x: 0, y: 380, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        buttonFour.setTitle("Hex with # and Alpha: #20aa4580", forState: .Normal)
        
        view.addSubview(buttonFour)
        
        buttonOne.backgroundColor = UIColor.colorWithHex("f80")
        buttonTwo.backgroundColor = UIColor.colorWithHex("ff8800ff")
        buttonThree.backgroundColor = UIColor.colorWithHex("#20aa45")
        buttonFour.backgroundColor = UIColor.colorWithHex("#20aa4580")
    }
}

