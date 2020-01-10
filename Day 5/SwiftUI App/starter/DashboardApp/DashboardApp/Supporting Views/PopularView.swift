//
//  PopularView.swift
//  DashboardApp
//
//  Created by Craig Clayton on 1/4/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct PopularView: View {
    @State private var currentPage = 0
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("POPULAR THIS WEEK")
                    .customFont(.custom(.bold, 22))
                    .foregroundColor(.baseDarkGray)
                Divider()
            }.padding(.leading, 20)

            PageViewer(pageCount: 3, currentIndex: self.$currentPage) {
                ForEach(0..<3) { _ in
                     PopularItem()
                }
            }.frame(height: 265)
        }
    }
}

struct PopularView_Previews: PreviewProvider {
    static var previews: some View {
        PopularView()
    }
}
