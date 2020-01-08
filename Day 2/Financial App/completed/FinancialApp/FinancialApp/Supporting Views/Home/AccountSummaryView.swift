//
//  AccountSummaryView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/29/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AccountInfo: Identifiable {
    let id = UUID()
    let title: String
    let value: String
}

struct AccountSummaryView: View {

    let data = [
        AccountInfo(title: "Last Bill Amount", value: "$9999"),
        AccountInfo(title: "Payment Due Date", value: "$9999"),
        AccountInfo(title: "Min. Amount Due Date", value: "$9999")
    ]

    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().backgroundColor = UIColor.clear
    }

    var body: some View {
        VStack {
            VStack {
                VStack(spacing: 0) {
                    HStack {
                        Text("ACCOUNT")
                            .customFont(.custom(.bold, 20))
                            .foregroundColor(.basePrussianBlue)
                        Spacer()
                        Text("****  ****  ****  2864")
                            .customFont(.custom(.medium, 15))
                            .foregroundColor(.gray)
                    }
                    Divider()
                }

                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Credit Utilized")
                            .customFont(.custom(.medium, 12))
                            .foregroundColor(.gray)
                        Text("$9999")
                            .customFont(.custom(.bold, 20))
                            .foregroundColor(.basePrussianBlue)
                    }

                    Spacer()

                    VStack(alignment: .trailing, spacing: 0) {
                        Text("Available Credit Limit")
                            .customFont(.custom(.medium, 12))
                            .foregroundColor(.gray)

                        Text("$999,999")
                            .customFont(.custom(.bold, 20))
                            .foregroundColor(.basePrussianBlue)
                    }

                }
                .padding(.top, 10)

                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(Color.baseMediumGray)
                        .cornerRadius(4.5)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 10)

                    Rectangle()
                        .fill(Color.basePrussianBlue)
                        .cornerRadius(4.5)
                        .frame(width:120, height: 10)

                }
                .padding(.bottom)
            }
            .padding(.horizontal)

            Divider()
            List {
                ForEach(data) { item in
                    AccountInfoItem(item: item)
                        .listRowBackground(Color.baseWhite)
                }
            }.frame(height: 150)

        }
        .padding(.top)
        .background(Color.baseWhite)
    }
}

struct AccountSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        AccountSummaryView()
    }
}
