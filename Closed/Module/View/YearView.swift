//
//  YearView.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import SwiftUI

struct YearView: View {
    
    var year: YearItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(0 ..< year.months.count) {
                MonthView(month: self.year.months[$0])
            }
        }
    }
    
}

struct YearView_Previews: PreviewProvider {
    static var previews: some View {
        YearView(year: YearItem.sample)
    }
}
