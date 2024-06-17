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

    var body: some View {
        NavigationView {
            Text("Select")
                .onAppear(perform: {
                    viewModel.onAppear()
                })
        }
    }
}

#Preview {
    ContentView()
}
