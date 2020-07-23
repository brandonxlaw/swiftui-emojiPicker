//
//  emojiPicker.swift
//  Playground
//
//  Created by Brandon Law on 2020-07-21.
//


import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    @State private var colorOption = 0
    @State private var emojiOption = 0
    @State private var sizeOption = 0
    
    let emojiList = ["🥺", "🔥", "💩", "🙊"]
    let colorList = ["Blue", "Green", "Red"]
    let sizeList = ["Small", "Medium", "Large"]
    
    var emojiSize: Int {
        if sizeOption == 0 {
            return 90
        } else if sizeOption == 1 {
            return 120
        } else {
            return 150
        }
    }
    
    var body: some View {
        VStack (spacing: 24) {
            // Display
            if colorOption == 0 {
                Text(self.emojiList[emojiOption])
                    .frame(width: 400, height: 400)
                    .font(.system(size: CGFloat(emojiSize)))
                    .background(Color.blue)
                    .cornerRadius(16)
            } else if colorOption == 1 {
                Text(self.emojiList[emojiOption])
                    .frame(width: 400, height: 400)
                    .font(.system(size: CGFloat(emojiSize)))
                    .background(Color.green)
                    .cornerRadius(16)
            } else {
                Text(self.emojiList[emojiOption])
                    .frame(width: 400, height: 400)
                    .font(.system(size: CGFloat(emojiSize)))
                    .background(Color.red)
                    .cornerRadius(16)
            }
            
            // Picker
            VStack {
                Picker(selection: $emojiOption, label: Text("")) {
                    ForEach(0 ..< emojiList.count) {
                        Text(self.emojiList[$0])
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Picker(selection: $sizeOption, label: Text("")) {
                    ForEach(0 ..< sizeList.count) {
                        Text(self.sizeList[$0])
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                Picker(selection: $colorOption, label: Text("")) {
                    ForEach(0 ..< colorList.count) {
                        Text(self.colorList[$0])
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
            }
            .frame(width: 400, height: 250)
            .background(Color(.systemGray4))
            .cornerRadius(16)
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())
