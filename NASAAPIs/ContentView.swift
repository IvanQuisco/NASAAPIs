//
//  ContentView.swift
//  NASAAPIs
//
//  Created by Ivan Quintana on 07/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("APOD", destination: APODView())
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationBarTitle("NASA APIs")
        }
    }
}

#Preview {
    ContentView()
}
