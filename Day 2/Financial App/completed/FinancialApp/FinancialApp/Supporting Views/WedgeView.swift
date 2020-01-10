//
//  WedgeView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/9/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct WedgeView: View {

    let wedges = [
        Wedge(startAngle: -43, endAngle: 43, color:  .basePrussianBlue),
        Wedge(startAngle: 43, endAngle: 150, color:  .baseLightGreen),
        Wedge(startAngle: 150, endAngle: -43, color: .baseRed)
    ]


    var body: some View {
        ZStack {
            ForEach(0..<wedges.count) {
                WedgeShape(startAngle: Angle(degrees: self.wedges[$0].startAngle),
                           endAngle: Angle(degrees: self.wedges[$0].endAngle),
                           lineWidth: 60)
                    .foregroundColor(self.wedges[$0].color)
            }
        }
    }
}

struct WedgeView_Previews: PreviewProvider {
    static var previews: some View {
        WedgeView()
    }
}
