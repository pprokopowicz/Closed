//
//  ContentView.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var model = Bundle.main.decode([YearModel].self, from: "dates.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< model.count) { index in
                    Section(header: YearHeaderText(self.model[index].year)) {
                        YearView(year: self.model[index])
                    }
                }
            }.navigationBarTitle("Closed")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
