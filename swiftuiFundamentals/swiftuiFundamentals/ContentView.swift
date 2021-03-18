//
//  ContentView.swift
//  swiftuiFundamentals
//
//  Created by Hiram Castro on 17/03/21.
//

import SwiftUI

struct ContentView: View {
    
    private let lang = ["Swift", "Objective-C", "Java", "C++"]
    
    @State private var langSelected = 0
    @State private var dateSelected = Date()
    @State private var colorSelected = Color.yellow
    
    var body: some View {
        VStack {
            Picker(selection: $langSelected, label: Text("Select a lenguage")) {
                ForEach(0..<lang.count, id: \.self) {
                    idx in
                    Text(lang[idx])
                        .tag(idx)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Text(lang[langSelected])
            
            DatePicker("Select a date", selection: $dateSelected)
            
            ColorPicker("Select a color", selection: $colorSelected)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
