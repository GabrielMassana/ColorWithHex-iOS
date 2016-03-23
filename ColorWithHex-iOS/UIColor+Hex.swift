//
//  UIColor+Hex.swift
//  ColorWithHex
//
//  Created by GabrielMassana on 18/03/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//
//  Credit: https://www.hackingwithswift.com/example-code/uicolor/how-to-convert-a-hex-color-to-a-uicolor
// 

import UIKit

public extension UIColor {
    
    /**
     Creates UIColor object based on given hexadecimal color value (rrggbb) or (#rrggbb).
     
     - parameter hex: String with the hex information. With or without hash symbol.
     
     - returns: A UIColor from the given String.
    */
    public class func colorWithHex(hex: String) -> UIColor? {
        
        let red: CGFloat
        let green: CGFloat
        let blue: CGFloat
        
        var color:UIColor? = nil
        
        let noHash = hex.stringByReplacingOccurrencesOfString("#", withString: "")
        
        let start = noHash.startIndex
        let hexColor = noHash.substringFromIndex(start)
        
        if hexColor.characters.count == 6 {
            
            let scanner = NSScanner(string: hexColor)
            var hexNumber: UInt64 = 0
            
            if scanner.scanHexLongLong(&hexNumber) {
                
                red = CGFloat((hexNumber & 0xff0000) >> 16) / 255
                green = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
                blue = CGFloat(hexNumber & 0x0000ff) / 255
                
                color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
            }
        }
        
        return color
    }
    
    /**
     Creates UIColor object based on given hexadecimal color value with alpha (rrggbbaa) or (#rrggbbaa).
     
     - parameter hex: String with the hex information. With or without hash symbol.
     
     - returns: A UIColor from the given String.
    */
    public class func colorWithHexAlpha(hex: String) -> UIColor? {
        
        let red: CGFloat
        let green: CGFloat
        let blue: CGFloat
        let alpha: CGFloat
        
        var color:UIColor? = nil
        
        let noHash = hex.stringByReplacingOccurrencesOfString("#", withString: "")
        
        let start = noHash.startIndex
        let hexColor = noHash.substringFromIndex(start)
        
        if hexColor.characters.count == 8 {
            
            let scanner = NSScanner(string: hexColor)
            var hexNumber: UInt64 = 0
            
            if scanner.scanHexLongLong(&hexNumber) {
                
                red = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                green = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                blue = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                alpha = CGFloat(hexNumber & 0x000000ff) / 255
                
                color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
            }
        }
        
        return color
    }
}
