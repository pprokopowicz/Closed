//
//  DateModel.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import Foundation

struct DateModel: Decodable {
    
    let name: String
    let day: Int
    let status: Status
    
    enum Status: String, Decodable {
        case open
        case closed
    }
    
}
