//
//  ContentView.swift
//  SwifUI101
//
//  Created by Craig Clayton on 1/6/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            SampleView()
            SampleView()
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
