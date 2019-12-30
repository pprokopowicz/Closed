//
//  DayView.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import SwiftUI

struct DayView: View {
    
    var day: DateItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(day.day)
                .font(.system(size: 30, weight: .bold, design: .default))
            HStack {
                Text(day.name)
                    .font(.system(size: 25))
                    .foregroundColor(.gray)
                Spacer()
                Text(day.status.description)
                    .font(.system(size: 25))
                    .foregroundColor(day.status.color)
            }
        }
    }
    
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: DateItem.sample)
    }
}
