//
//  CreateAccountView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/28/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CreateAccountView: View {

    @State private var selectedColor = Color.basePrussianBlue
    @State private var selectedSegment = 1

    struct CardTypes {
        static let types = [
            "Mastercard",
            "Visa",
            "American Express"
        ]
    }

    var body: some View {
        ZStack {
            Color(.baseWhite)
                .edgesIgnoringSafeArea(.all)

            VStack {
                CreditCardTypeMenuView()
                CreditCardView(color: $selectedColor)
                ColorPickerView(selectedSegment: $selectedSegment, selectedColor: $selectedColor)
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView().previewLayout(.fixed(width: 414, height: 450))
    }
}
