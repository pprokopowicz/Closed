//
//  YearModel.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import Foundation

struct YearModel: Decodable {
    
    let year: Int
    let months: [MonthModel]
    
}

extension YearModel: Samplable {
    
    static var sample: YearModel {
        YearModel(year: 2020, months: [MonthModel.sample, MonthModel.sample, MonthModel.sample, MonthModel.sample])
    }
    
}
