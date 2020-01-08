//
//  AccountInfoItem.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/8/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct AccountInfoItem: View {
    let item: AccountInfo

    var body: some View {
        HStack {
            Text(item.title)
                .customFont(.custom(.bold, 14))
                .foregroundColor(.basePrussianBlue)
            Spacer()
            Text(item.value)
                .customFont(.custom(.medium, 14))
                .foregroundColor(.baseblackAlpha30)
        }
    }
}

struct AccountInfoItem_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoItem(item: AccountInfo(title: "Last Bill Amount", value: "$99999"))
    }
}
