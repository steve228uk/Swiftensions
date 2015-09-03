//
//  String+CamelCaseToString.swift
//  SellFormula
//
//  Created by Stephen Radford on 24/08/2015.
//

import Foundation

extension String {
    
    func stringFromCamelCase() -> String {
        var string = self
        
        string = string.stringByReplacingOccurrencesOfString("([a-z])([A-Z])", withString: "$1 $2", options: NSStringCompareOptions.RegularExpressionSearch, range: Range<String.Index>(start: string.startIndex, end: string.endIndex))
        
        string.replaceRange(startIndex...startIndex, with: String(self[startIndex]).capitalizedString)
        
        return string
    }
    
}