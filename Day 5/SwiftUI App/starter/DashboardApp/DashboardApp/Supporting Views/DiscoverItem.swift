//
//  DiscoverItem.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/4/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DiscoverItem: View {
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 8.0)
                .fill(Color.baseDarkGray)
                .frame(width: 200, height: 250)

            VStack(alignment: .leading) {
                Text("American Steakhouse")
                    .customFont(.custom(.bold, 17))
                Text("99 American Dr")
                    .customFont(.custom(.ultralight, 13))
                HStack(alignment: .center, spacing: 5) {
                    Image(systemName: "star.fill")
                        .font(.system(size: 10))
                        .foregroundColor(.baseYellow)
                        .offset(y: -2)
                    Text("4.8")
                        .customFont(.custom(.demibold, 13))
                    Text("(999 ratings)")
                        .customFont(.custom(.ultralight, 13))
                }
            }
        }
    }
}

struct DiscoverItem_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverItem()
    }
}
