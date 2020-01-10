//
//  ListView.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/7/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ListView: View {

    let states = ListDataManager.states

    @State private var searchTerm : String = ""

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchTerm)
                List {
                    ForEach(self.states.filter {
                        self.searchTerm.isEmpty ? true : $0.localizedStandardContains(self.searchTerm)
                    }, id: \.self) { state in
                        Text(state)
                    }
                }.navigationBarTitle(Text("Search Bar"))
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
