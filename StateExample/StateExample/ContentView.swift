//
//  ContentView.swift
//  StateExample
//
//  Created by 최하은 on 2023/11/01.
//

import SwiftUI

struct ContentView: View {
    @State private var like = false

    var body: some View {
        StateExample(like: $like)
        StateExample2(like: $like)
        Text("부모 뷰의 like = \(String(like))")
    }
}

#Preview {
    ContentView()
}
