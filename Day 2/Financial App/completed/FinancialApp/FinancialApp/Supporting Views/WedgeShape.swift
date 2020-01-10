//
//  WedgeShape.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/9/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct Wedge {
    var startAngle: Double
    var endAngle: Double
    var color: Color
}

struct WedgeShape: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let lineWidth: CGFloat

    func path(in rect: CGRect) -> Path {
        var p = Path()
        let center = CGPoint(x: rect.size.width/2, y: rect.size.width/2)
        let radius = rect.size.width / 2

        p.addArc(center: center, radius: abs(lineWidth - radius), startAngle: startAngle, endAngle: endAngle, clockwise: false)
        p.addArc(center: center, radius: radius, startAngle: endAngle, endAngle: startAngle, clockwise: true)
        p.closeSubpath()

        return p
    }
}
