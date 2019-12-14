//
//  YearHeaderText.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import SwiftUI

struct YearHeaderText: View {
    
    let year: Int
    
    var body: some View {
        Text(Formatter.withoutSeparator.string(for: 2020) ?? "")
            .font(.system(size: 30))
    }
    
    init(_ year: Int) {
        self.year = year
    }
    
}

struct YearHeaderText_Previews: PreviewProvider {
    static var previews: some View {
        YearHeaderText(2020)
    }
}
