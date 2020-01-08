//
//  QuickServicesView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/26/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct QuickServicesView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("QUICK SERVICES")
                    .customFont(.custom(.bold, 20))
                    .foregroundColor(.basePrussianBlue)
                Spacer()

            }

            Divider().padding(.bottom, 10)

            HStack {
                ForEach(0..<4) { index in
                    VStack {
                        Image("icon-bills")
                        Text("TRANSACTIONS").customFont(.custom(.demibold, 12))
                    }
                    .frame(width: 75, height: 80)
                    .background(Color.white)
                    .cornerRadius(10)

                    if index != 3 { Spacer() }
                }
            }
        }.padding(.horizontal, 10)
    }
}

struct QuickServicesView_Previews: PreviewProvider {
    static var previews: some View {
        QuickServicesView()
    }
}
