//
//  CreditCardListView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/26/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct Dot: Identifiable {
    let id: Int
    var isSelected = false
}

struct CreditCardListView: View {

    let colors = [Color.basePrussianBlue,
                  Color.orange,
                  Color.purple,
                  Color.black]

    @State private var currentPage = 0
    @State private var isShowingDetail = false

    var body: some View {
        VStack {
//            PageViewer(pageCount: colors.count, currentIndex: self.$currentPage) {
//                ForEach(colors, id: \.self) { color in
//                    CreditCardView(color: color).onTapGesture {
//                        self.isShowingDetail.toggle()
//                    }.sheet(isPresented: self.$isShowingDetail) {
//                        CardDetailView()
//                    }
//                }
//            }.frame(height: 220)

            HStack {
                ForEach(0..<colors.count) { index in
                    DotView(index: index, currentPage: self.$currentPage)
                }
            }.padding(.bottom)
        }.padding(.top, 20)
    }
}

struct CreditCardListView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardListView()
    }
}
