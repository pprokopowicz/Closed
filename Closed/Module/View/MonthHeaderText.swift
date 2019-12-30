//
//  MonthHeaderText.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import SwiftUI

struct MonthHeaderText: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 40, weight: .bold, design: .default))
            .foregroundColor(.blue)
    }
    
    init(_ text: String) {
        self.text = text
    }
    
}

struct MonthHeaderText_Previews: PreviewProvider {
    static var previews: some View {
        MonthHeaderText("January")
    }
}
