//
//  DateItem.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 30/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import Foundation
import SwiftUI

struct DateItem {
    
    init(model: DateModel) {
        self.name = model.name
        self.day = "\(model.day)\(model.day.oridinalIndicator)"
        
        if let hour = model.hour {
            self.status = .until(hour: hour)
        } else {
            self.status = model.status == .open ? .open : .closed
        }
    }
    
    let name: String
    let day: String
    let status: Status
    
    enum Status {
        case open
        case closed
        case until(hour: String)
        
        var description: String {
            switch self {
            case .open: return "Open"
            case .closed: return "Closed"
            case .until(let hour): return "Open until \(hour)"
            }
        }
        
        var color: Color {
            switch self {
            case .open: return .green
            case .closed: return .red
            case .until: return .orange
            }
        }
        
    }
    
}

// MARK: Samplable

extension DateItem: Samplable {
    
    static var sample: DateItem { DateItem(model: DateModel.sample) }
    
}
