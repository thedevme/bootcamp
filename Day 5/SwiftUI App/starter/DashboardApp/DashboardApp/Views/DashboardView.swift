//
//  DashboardView.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/4/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                DiscoverView()
                PopularView()
                LinksView()
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
