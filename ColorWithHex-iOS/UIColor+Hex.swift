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
    
    //MARK: - Public method
    
    /**
     Creates UIColor object based on given hexadecimal color value (rrggbb), (#rrggbb), (rrggbbaa), (#rrggbbaa), (rgb) or (#rgb).
     
     - parameter hex: String with the hex information. With or without hash symbol.
     
     - returns: A UIColor from the given String.
    */
    public class func colorWithHex(hex: String) -> UIColor? {
        
        var color:UIColor? = nil
        
        let noHash = hex.stringByReplacingOccurrencesOfString("#", withString: "")
        
        let start = noHash.startIndex
        let hexColor = noHash.substringFromIndex(start)
        
        if (hexColor.characters.count == 8) {
            
            color = colorWithHexAlpha(hexColor)
        }
        else if (hexColor.characters.count == 6)
        {
           color = colorWithHexSixCharacters(hexColor)
        }
        else if (hexColor.characters.count == 3)
        {
            color = colorWithHexThreeCharacters(hexColor)
        }
        
        return color
    }
    
    //MARK: - Private methods
    
    /**
     Creates UIColor object based on given hexadecimal color value with alpha (rrggbbaa).
     
     - parameter hex: String with the hex information.
     
     - returns: A UIColor from the given String.
     */
    private class func colorWithHexAlpha(hexColor: String) -> UIColor? {
        
        let red: CGFloat
        let green: CGFloat
        let blue: CGFloat
        let alpha: CGFloat
        
        var color:UIColor? = nil
        
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
    
    /**
     Creates UIColor object based on given hexadecimal color value without alpha (rrggbb) by adding alpha 1.0 to the given hex color.
     
     - parameter hex: String with the hex information.
     
     - returns: A UIColor from the given String.
     */
    private class func colorWithHexSixCharacters(hexColor: String) -> UIColor? {
        
        return colorWithHexAlpha(String(format: "%@ff", hexColor))
    }
    
    /**
     Creates UIColor object based on given short hexadecimal color value without alpha (rgb). Alpha will be 1.0.
     
     - parameter hex: String with the hex information.
     
     - returns: A UIColor from the given String.
     */
    private class func colorWithHexThreeCharacters(hexColor: String) -> UIColor? {
        
        let redRange: Range = Range<String.Index>(start:  hexColor.startIndex.advancedBy(0), end: hexColor.startIndex.advancedBy(1))
        let redString: String = String(format: "%@%@", hexColor.substringWithRange(redRange), hexColor.substringWithRange(redRange))
        
        let greenRange: Range = Range<String.Index>(start:  hexColor.startIndex.advancedBy(1), end: hexColor.startIndex.advancedBy(2))
        let greenString: String = String(format: "%@%@", hexColor.substringWithRange(greenRange), hexColor.substringWithRange(greenRange))
        
        let blueRange: Range = Range<String.Index>(start:  hexColor.startIndex.advancedBy(2), end: hexColor.startIndex.advancedBy(3))
        let blueString: String = String(format: "%@%@", hexColor.substringWithRange(blueRange), hexColor.substringWithRange(blueRange))
        
        let hex: String = String(format: "%@%@%@", redString, greenString, blueString)
        
        return colorWithHexSixCharacters(hex)
    }
}
