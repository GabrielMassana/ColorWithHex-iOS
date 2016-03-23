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

    
        let viewOne: UIView = UIView(frame: CGRect.init(x: 0, y: 20, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        
        view.addSubview(viewOne)
        
        let viewTwo: UIView = UIView(frame: CGRect.init(x: 0, y: 140, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        
        view.addSubview(viewTwo)
        
        let viewThree: UIView = UIView(frame: CGRect.init(x: 0, y: 260, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        
        view.addSubview(viewThree)
        
        let viewFour: UIView = UIView(frame: CGRect.init(x: 0, y: 380, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        
        view.addSubview(viewFour)
        
        viewOne.backgroundColor = UIColor.colorWithHex("f0aa45")
        viewTwo.backgroundColor = UIColor.colorWithHexAlpha("f0aa45ff")
        viewThree.backgroundColor = UIColor.colorWithHex("#f0aa45")
        viewFour.backgroundColor = UIColor.colorWithHexAlpha("#f0aa45ff")
    }



}

