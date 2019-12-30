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
    let hour: String?
    
    enum Status: String, Decodable {
        case open
        case closed
    }
    
}

extension DateModel: Samplable {
    
    static var sample: DateModel {
        DateModel(name: "Sunday", day: 10, status: .closed, hour: nil)
    }
    
}
