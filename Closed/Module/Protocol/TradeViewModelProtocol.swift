//
//  TradeViewModelProtocol.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 30/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import Foundation

protocol TradeViewModelProtocol {
    
    func item(for index: Int) -> YearItem
    var numberOfItems: Int { get }
    
}
