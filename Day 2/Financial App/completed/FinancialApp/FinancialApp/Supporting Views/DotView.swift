//
//  DotView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/29/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DotView: View {
    let index: Int
    @Binding var currentPage: Int

    var body: some View {
        Capsule()
            .fill(checkCurrentPage())
            .frame(width: 15, height: 5)
    }

    func checkCurrentPage() -> Color {
        if index == currentPage {
            return .basePrussianBlue
        }

        return Color.baseMediumGray
    }

}

struct DotView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DotView(index: 0, currentPage: .constant(0))
                .previewLayout(.fixed(width: 50, height: 10))

            DotView(index: 1, currentPage: .constant(0))
                .previewLayout(.fixed(width: 50, height: 10))
        }
    }
}
