//
//  LinksView.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/4/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct LinksView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("QUICK LINKS")
                    .customFont(.custom(.bold, 22))
                    .foregroundColor(.baseDarkGray)
                Divider()
            }.padding(.leading, 20)

            VStack(alignment: .leading) {
                HStack(spacing: 12) {
                    Image(systemName: "person.crop.rectangle")
                    Text("Your Preference")
                        .customFont(.custom(.medium, 17))
                }

                Divider()
            }.padding(.leading, 20)

            VStack(alignment: .leading) {
                HStack(spacing: 12) {
                    Image(systemName: "chart.bar")
                    Text("Your Activity")
                        .customFont(.custom(.medium, 17))
                }

                Divider()
            }.padding(.leading, 20)

            VStack(alignment: .leading) {
                HStack(spacing: 12) {
                    Image(systemName: "calendar")
                    Text("Reservations")
                        .customFont(.custom(.medium, 17))
                }

                Divider()
            }.padding(.leading, 20)

            VStack(alignment: .leading) {
                HStack(spacing: 12) {
                    Image(systemName: "hand.thumbsup")
                    Text("Check-ins")
                        .customFont(.custom(.medium, 17))
                }

                Divider()
            }.padding(.leading, 20)
        }

    }
}

struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        LinksView()
    }
}
