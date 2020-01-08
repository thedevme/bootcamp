//
//  AccountHomeView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/24/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AccountHomeView: View {
    var body: some View {
        ZStack {
            Color(.baseLightWhite)
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                VStack(spacing: 0) {
                    AppHeaderView()
                        .padding(.horizontal)
                    CreditCardListView()
                    AccountSummaryView()
                    QuickServicesView()
                    Spacer()
                }
            }
        }
    }
}

struct AccountHomeView_Previews: PreviewProvider {
    static var previews: some View {
        AccountHomeView()
    }
}
