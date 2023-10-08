//
//  ContentView.swift
//  Landmarks2
//
//  Created by 최하은 on 2023/10/08.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
