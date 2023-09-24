//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 최하은 on 2023/09/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
