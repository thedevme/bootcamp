//
//  CreditCardTypeMenuView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/9/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CreditCardTypeMenuView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 3) {
                Text("SELECT A CARD TYPE")
                    .customFont(.custom(.bold, 18))
                    .foregroundColor(.basePrussianBlue)
                    .padding(.leading)
                Divider()
            }

            VStack {
                HStack {
                    Button(action:{}) {
                        VStack {
                            Image("mc-logo-selector")
                            Image("checkmark-outline-selector")
                        }
                    }
                    .buttonStyle(CreditCardButtonStyle())

                    Button(action:{}) {
                        VStack {
                            Image("am-logo-selector")
                            Image("checkmark-outline-selector")
                        }
                    }
                    .buttonStyle(CreditCardButtonStyle())

                    Button(action:{}) {
                        VStack {
                            Image("visa-logo-selector")
                            Image("checkmark-outline-selector")
                        }
                    }
                    .buttonStyle(CreditCardButtonStyle())
                }
            }
        }
    }
}

struct CreditCardTypeMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardTypeMenuView()
    }
}
