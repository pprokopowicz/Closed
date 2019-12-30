//
//  ContentView.swift
//  Closed
//
//  Created by Piotr Prokopowicz on 14/12/2019.
//  Copyright © 2019 Piotr Prokopowicz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: TradeViewModelProtocol
    
    init(viewModel: TradeViewModelProtocol = TradeViewModel()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ..< viewModel.numberOfItems) { index in
                    Section(header: YearHeaderText(self.viewModel.item(for: index).year)) {
                        YearView(year: self.viewModel.item(for: index))
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
