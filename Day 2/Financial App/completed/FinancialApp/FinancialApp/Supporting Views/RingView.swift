//
//  RingView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/9/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct RingView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 40)
                .fill(Color.gray)

            Circle()
                .trim(from: 0.1, to: 1)
                .stroke(Color(.baseRed), style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(180))
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
        }
        .frame(width: 300, height: 300)
        .rotationEffect(.degrees(90), anchor: .center)
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
