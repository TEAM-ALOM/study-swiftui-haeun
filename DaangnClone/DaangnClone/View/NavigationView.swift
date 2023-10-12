//
//  NavigationView.swift
//  DaangnClone
//
//  Created by 최하은 on 2023/10/08.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        HStack{
            Image(systemName: "chevron.backward")
            Image(systemName: "house")
            Spacer()
            Image(systemName: "square.and.arrow.up")
            Image("kebab menu")
                .resizable()
                .frame(width: 20, height: 20)
        }
        .padding()
    }
}

#Preview {
    NavigationView()
}
