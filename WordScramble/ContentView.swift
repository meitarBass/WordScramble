//
//  ContentView.swift
//  WordScramble
//
//  Created by Meitar Basson on 07/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section("Section 1") {
                Text("Static row 1")
                Text("Static row 2")
            }

            Section("Section 2") {
                ForEach(0..<5) {
                    Text("Dynamic row \($0)")
                }
            }

            Section("Section 3") {
                Text("Static row 3")
                Text("Static row 4")
            }
        }.listStyle(.grouped)
        
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
            // we found the file in our bundle!
            if let fileContents = try? String(contentsOf: fileURL) {
                // we loaded the file into a string!
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
