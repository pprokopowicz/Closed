//
//  DayView.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import SwiftUI

struct DayView: View {
    
    @State var day: DateModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(day.day)\(day.day.oridinalIndicator)")
                .font(.system(size: 35, weight: .bold, design: .default))
            HStack {
                Text(day.name)
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                Spacer()
                Text(day.status.rawValue)
                    .font(.system(size: 30))
                    .foregroundColor(color(for: day.status))
            }
        }
    }
    
    private func color(for status: DateModel.Status) -> Color {
        switch status {
        case .open: return .green
        case .closed: return .red
        }
    }
    
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: DateModel.sample)
    }
}
