//
//  DiscoverView.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/4/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("DISCOVER NEW PLACES")
                    .customFont(.custom(.bold, 22))
                    .foregroundColor(.baseDarkGray)
                Divider()
            }.padding(.leading, 20)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<6) {_ in
                        DiscoverItem()
                    }
                }.padding(.leading, 20)
            }
            .frame(height: 350)
            .padding(.bottom, 10)
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
