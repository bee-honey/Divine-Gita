//
//  ContentView.swift
//  Divine Gita
//
//  Created by Naveen Keerthy on 6/14/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    var count = "1"

    var body: some View {
        NavigationView {
            Text("ContentView.bhagavad_gita_chapter \(count)")
                .onAppear(perform: {
                    viewModel.onAppear()
                })
        }
    }
}

#Preview {
    ContentView()
}
