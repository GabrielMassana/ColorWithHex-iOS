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

    
        let buttonShortHex: UIButton = UIButton(frame: CGRect.init(x: 0, y: 20, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        buttonShortHex.setTitle("Short Hex: f80 (ff8800)", forState: .Normal)
        
        view.addSubview(buttonShortHex)
        
        let buttonHex: UIButton = UIButton(frame: CGRect.init(x: 0, y: 140, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        buttonHex.setTitle("Hex: ff8800", forState: .Normal)
        
        view.addSubview(buttonHex)
        
        let buttonHexAlpha: UIButton = UIButton(frame: CGRect.init(x: 0, y: 260, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        buttonHexAlpha.setTitle("Hex with Alpha: ff880080", forState: .Normal)
        
        view.addSubview(buttonHexAlpha)
        
        let buttonHexHash: UIButton = UIButton(frame: CGRect.init(x: 0, y: 380, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        buttonHexHash.setTitle("Hex with #: #20aa45", forState: .Normal)
        
        view.addSubview(buttonHexHash)
        
        let buttonHexHashAlpha: UIButton = UIButton(frame: CGRect.init(x: 0, y: 500, width: CGRectGetWidth(UIScreen.mainScreen().bounds), height: 100))
        buttonHexHashAlpha.setTitle("Hex with # and Alpha: #20aa4580", forState: .Normal)
        
        view.addSubview(buttonHexHashAlpha)
        
        buttonShortHex.backgroundColor = UIColor.colorWithHex("f80")
        buttonHex.backgroundColor = UIColor.colorWithHex("ff8800")
        buttonHexAlpha.backgroundColor = UIColor.colorWithHex("ff880080")
        buttonHexHash.backgroundColor = UIColor.colorWithHex("#20aa45")
        buttonHexHashAlpha.backgroundColor = UIColor.colorWithHex("#20aa4580")
    }
}

