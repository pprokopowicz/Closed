//
//  MonthView.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import SwiftUI

struct MonthView: View {
    
    @State var month: MonthModel
    
    var body: some View {
        Section(header: MonthHeaderText("\(month.name)")) {
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0 ..< month.dates.count) {
                    DayView(day: self.month.dates[$0])
                }
            }
        }
    }
}

struct MonthView_Previews: PreviewProvider {
    static var previews: some View {
        MonthView(month: MonthModel.sample)
    }
}
