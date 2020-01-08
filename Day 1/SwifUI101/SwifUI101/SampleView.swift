//
//  SampleView.swift
//  SwifUI101
//
//  Created by Craig Clayton on 1/6/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct SampleView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hi, Craig Clayton")
                    Text("Welcome to your favorite app.")
                }

                Spacer()

                Image(systemName: "person.fill")
                    .font(.system(size: 40))
            }.padding(.horizontal, 13)

            Spacer()
        }
    }
}

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        SampleView()
    }
}
