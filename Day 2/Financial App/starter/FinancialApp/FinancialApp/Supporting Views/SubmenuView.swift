//
//  SubmenuView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 12/23/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct RoundButtonItem: Identifiable {
    let id = UUID()
    let title: String
    var imageName: String = ""
}

struct SubmenuView: View {

    var body: some View {
       Text("Submenu View")
    }
}

struct SubmenuView_Previews: PreviewProvider {
    static var previews: some View {
        SubmenuView()
    }
}
