//
//  CreditCardView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/26/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CreditCardView: View {

    @Binding var color: Color

    var body: some View {
        ZStack {
            HStack(spacing: -116) {
                Image("left-card")
                    .renderingMode(.template)
                    .foregroundColor(color)

                Image("right-card")
                    .renderingMode(.template)
                    .foregroundColor(color)
                    .opacity(0.94)
            }

            VStack {
                HStack {
                    Image("checkmark")

                    VStack(alignment: .leading, spacing: -6) {
                        Text("$9,999.99").customFont(.custom(.bold, 20))
                        Text("Available Balance").customFont(.custom(.ultralight, 10))
                    }
                    Spacer()
                    Image("visa-logo")
                }

                Spacer()

                HStack {
                    HStack {
                        Text("****").customFont(.custom(.black, 17))
                        Text("****").customFont(.custom(.black, 17))
                        Text("****").customFont(.custom(.black, 17))
                        Text("9999").customFont(.custom(.black, 20))
                    }

                    Spacer()
                }

                Spacer()

                HStack {
                    VStack(alignment: .leading) {
                        Text("CARD HOLDER").customFont(.custom(.bold, 11))
                        Text("Craig Clayton").customFont(.custom(.black, 16))
                    }
                    Spacer()

                    VStack(alignment: .leading) {
                        Text("EXPIRES").customFont(.custom(.bold, 11))
                        Text("12/99").customFont(.custom(.black, 16))
                    }

                    VStack(alignment: .leading) {
                        Text("CVV").customFont(.custom(.bold, 11))
                        Text("999").customFont(.custom(.black, 16))
                    }
                }
            }
            .frame(width: 280, height: 160)
            .padding()
            .foregroundColor(.baseWhite)
        }
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView(color: .constant(.basePrussianBlue))
            .previewLayout(.fixed(width: 300, height: 180))
    }
}
