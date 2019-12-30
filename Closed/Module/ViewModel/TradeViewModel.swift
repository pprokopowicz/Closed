//
//  TradeViewModel.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 30/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import Foundation

struct TradeViewModel: TradeViewModelProtocol {
    
    // MARK: Properties
    
    private let years: [YearItem]
    
    // MARK: Init
    
    init() {
        self.years = Bundle.main.decode([YearModel].self, from: "dates.json").map { YearItem(model: $0) }
    }
    
    // MARK: TradeViewModelProtocol
    
    func item(for index: Int) -> YearItem {
        years[index]
    }
    
    var numberOfItems: Int {
        years.count
    }
    
}
