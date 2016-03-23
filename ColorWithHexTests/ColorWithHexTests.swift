//
//  ColorWithHexTests.swift
//  ColorWithHexTests
//
//  Created by GabrielMassana on 23/03/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import XCTest

//@testable import ColorWithHex

class ColorWithHexTests: XCTestCase {
    
    //MARK: - Accessors
    
    let shortHexHash: String?
    let shortHex: String?
    let hex: String?
    let hexAlpha: String?
    let hexHash: String?
    let hexHashAlpha: String?
    
    
    override func setUp() {
        
        super.setUp()
        
        let shortHexHash = "#f80"
        let shortHex  = "f80"
        let hex  = "ff8800"
        let hexAlpha  = "ff880080"
        let hexHash  = "#20aa45"
        let hexHashAlpha  = "#20aa4580"
    }
    
    override func tearDown() {
        
        let shortHexHash = nil
        let shortHex  = nil
        let hex  = nil
        let hexAlpha  = nil
        let hexHash  = nil
        let hexHashAlpha  = nil
        
        super.tearDown()
    }
    
    func test_colorWithHex_newObjectReturned_shortHexHash() {
        
        let shortHexHash: UIColor = UIColor.colorWithHex(shortHexHash)
    }
    
}
