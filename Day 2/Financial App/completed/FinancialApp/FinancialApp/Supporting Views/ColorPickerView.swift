//
//  ColorPickerView.swift
//  FinancialApp
//
//  Created by Craig Clayton on 1/9/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct ColorPickerView: View {
    @Binding var selectedSegment: Int
    @Binding var selectedColor: Color

    var body: some View {
        HStack {
            Button(action:{
                self.selectedSegment = 1
                self.selectedColor = Color.baseEndeavourBlue
            }) {
                ZStack {
                    ColorView(color: .baseEndeavourBlue)
                    Image("checkmark-selector")
                        .resizable()
                        .renderingMode(.template)
                        .opacity(self.selectedSegment == 1 ? 1 : 0)
                        .frame(width: 12, height: 10)
                        .foregroundColor(.white)
                }
            }.buttonStyle(PlainButtonStyle())

            Button(action:{
                self.selectedSegment = 2
                self.selectedColor = Color.orange
            }) {
                ZStack {
                    ColorView(color: .orange)
                    Image("checkmark-selector")
                        .resizable()
                        .renderingMode(.template)
                        .opacity(self.selectedSegment == 2 ? 1 : 0)
                        .frame(width: 12, height: 10)
                        .foregroundColor(.white)
                }
            }.buttonStyle(PlainButtonStyle())

            Button(action:{
                self.selectedSegment = 3
                self.selectedColor = Color.black
            }) {
                ZStack {
                    ColorView(color: .black)
                    Image("checkmark-selector")
                        .resizable()
                        .renderingMode(.template)
                        .opacity(self.selectedSegment == 3 ? 1 : 0)
                        .frame(width: 12, height: 10)
                        .foregroundColor(.white)
                }
            }.buttonStyle(PlainButtonStyle())

            Button(action:{
                self.selectedSegment = 4
                self.selectedColor = Color.red
            }) {
                ZStack {
                    ColorView(color: .red)
                    Image("checkmark-selector")
                        .resizable()
                        .renderingMode(.template)
                        .opacity(self.selectedSegment == 4 ? 1 : 0)
                        .frame(width: 12, height: 10)
                        .foregroundColor(.white)
                }
            }.buttonStyle(PlainButtonStyle())

            Button(action:{
                self.selectedSegment = 5
                self.selectedColor = Color.green
            }) {
                ZStack {
                    ColorView(color: .green)
                    Image("checkmark-selector")
                        .resizable()
                        .renderingMode(.template)
                        .opacity(self.selectedSegment == 5 ? 1 : 0)
                        .frame(width: 12, height: 10)
                        .foregroundColor(.white)
                }
            }.buttonStyle(PlainButtonStyle())

            Button(action:{
                self.selectedSegment = 6
                self.selectedColor = Color.purple
            }) {
                ZStack {
                    ColorView(color: .purple)
                    Image("checkmark-selector")
                        .resizable()
                        .renderingMode(.template)
                        .opacity(self.selectedSegment == 6 ? 1 : 0)
                        .frame(width: 12, height: 10)
                        .foregroundColor(.white)
                }
            }.buttonStyle(PlainButtonStyle())

            Button(action:{
                self.selectedSegment = 7
                self.selectedColor = Color.gray
            }) {
                ZStack {
                    ColorView(color: .gray)
                    Image("checkmark-selector")
                        .resizable()
                        .renderingMode(.template)
                        .opacity(self.selectedSegment == 7 ? 1 : 0)
                        .frame(width: 12, height: 10)
                        .foregroundColor(.white)
                }
            }.buttonStyle(PlainButtonStyle())

        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(selectedSegment: .constant(2), selectedColor: .constant(.blue))
    }
}
