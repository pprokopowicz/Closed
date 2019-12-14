//
//  Formatter+withoutSeparator.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import Foundation

extension Formatter {
    
    static var withoutSeparator: Formatter {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ""
        formatter.numberStyle = .decimal
        return formatter
    }
    
}
