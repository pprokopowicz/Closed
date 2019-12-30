//
//  MonthItem.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 30/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import Foundation

struct MonthItem {
    
    init(model: MonthModel) {
        self.name = model.name
        self.dates = model.dates.map { DateItem(model: $0) }
    }
    
    let name: String
    let dates: [DateItem]
    
}

// MARK: Samplable

extension MonthItem: Samplable {
    
    static var sample: MonthItem { MonthItem(model: MonthModel.sample) }
    
}
