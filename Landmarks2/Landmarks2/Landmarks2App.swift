//
//  Landmarks2App.swift
//  Landmarks2
//
//  Created by 최하은 on 2023/10/08.
//

import SwiftUI

@main
struct Landmarks2App: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
