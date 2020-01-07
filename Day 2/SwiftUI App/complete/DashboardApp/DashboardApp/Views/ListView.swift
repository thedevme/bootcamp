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

    var body: some View {
        List(states, id: \.self) { state in
            Text(state)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
