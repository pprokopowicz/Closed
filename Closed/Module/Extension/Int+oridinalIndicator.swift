//
//  Int+oridinalIndicator.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import Foundation

extension Int {
    
    var oridinalIndicator: String {
        if self == 11 || self == 12 { return "th" }
        
        guard let sufix = digits.last else { return "" }
        
        switch sufix {
        case 1:
            return "st"
        case 2:
            return "nd"
        case 3:
            return "rd"
        default:
            return "th"
        }
    }
    
    private var digits: [Int] { String(describing: self).compactMap { Int(String($0)) } }
    
}
