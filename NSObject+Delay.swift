//
//  NSObject+Delay.swift
//  SellFormula
//
//  Created by Stephen Radford on 28/08/2015.
//

import UIKit

extension NSObject {
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
}