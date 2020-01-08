//
//  AppHeaderView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/23/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AppHeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("App Header View")
                    .customFont(.custom(.bold, 24))
                    .foregroundColor(.basePrussianBlue)

                Text("App Header View")
                    .customFont(.custom(.demibold, 16))
                    .foregroundColor(.baseblackAlpha30)
            }

            Spacer()
            Image("avatar")
        }
    }
}

struct MainHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AppHeaderView().previewLayout(.fixed(width: 600, height: 80))
    }
}
