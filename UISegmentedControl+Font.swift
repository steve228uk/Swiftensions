//
//  UISegmentedControl+Font.swift
//  SellFormula
//
//  Created by Stephen Radford on 13/08/2015.
//

import UIKit

extension UISegmentedControl {
    
    @IBInspectable var fontName: String {
        get {
            return "OpenSans"
        }
        set {
            var attr = [NSFontAttributeName : UIFont(name: newValue, size: 12.0)!]
            setTitleTextAttributes(attr, forState: .Normal)
        }
    }
    
}