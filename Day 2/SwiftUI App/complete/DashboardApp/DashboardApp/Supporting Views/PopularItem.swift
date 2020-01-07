//
//  PopularItem.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/4/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct PopularItem: View {
    var body: some View {
        VStack(spacing: 10) {
            ForEach(0..<3) { _ in
                HStack {
                    RoundedRectangle(cornerRadius: 8.0)
                        .fill(Color.baseDarkGray)
                        .frame(width: 75, height: 75)

                    VStack(alignment: .leading) {
                        Text("Kelly's Cafe and Espresso")
                            .customFont(.custom(.bold, 17))
                        Text("99 American Dr")
                            .customFont(.custom(.ultralight, 13))

                        Spacer()

                        HStack(alignment: .center, spacing: 5) {
                            Image(systemName: "star.fill")
                                .foregroundColor(.baseYellow)
                                .font(.system(size: 10))
                            Text("Test")
                                .customFont(.custom(.demibold, 13))
                            Text("(999 ratings)")
                                .customFont(.custom(.ultralight, 13))

                            Spacer()

                            ZStack {
                                Text("FREE DELIVERY")
                                    .customFont(.custom(.bold, 11))
                            }
                            .frame(width: 77, height: 17)
                            .background(Color.baseDarkGray)
                            .foregroundColor(.white)
                            .cornerRadius(8.5)
                        }
                    }
                }
                .padding(.leading, 20)
                .padding(.trailing, 10)
                .frame(height: 75)
            }
        }
    }
}

struct PopularItem_Previews: PreviewProvider {
    static var previews: some View {
        PopularItem()
    }
}
