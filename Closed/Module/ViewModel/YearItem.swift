//
//  YearItem.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 30/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import Foundation

struct YearItem {
    
    init(model: YearModel) {
        self.year = model.year
        self.months = model.months.map { MonthItem(model: $0) }
    }
    
    let year: Int
    let months: [MonthItem]
    
}

// MARK: Samplable

extension YearItem: Samplable {
    
    static var sample: YearItem { YearItem(model: YearModel.sample) }
    
}
