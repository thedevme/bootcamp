//
//  ContentView.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/4/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("List")
                }.tag(0)

            DashboardView()
                .tabItem {
                    Image(systemName: "list.bullet.below.rectangle")
                    Text("Collection")
                }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
