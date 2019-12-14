//
//  MonthModel.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import Foundation

struct MonthModel: Decodable {
    
    let name: String
    let dates: [DateModel]
    
}
