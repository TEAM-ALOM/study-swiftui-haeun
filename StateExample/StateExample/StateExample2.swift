//
//  StateExample.swift
//  StateExample
//
//  Created by 최하은 on 2023/11/01.
//

import SwiftUI

struct StateExample2: View {
    @Binding var like: Bool
    
    var body: some View {
        Button{
            like.toggle()
        } label: {
            Label("like", systemImage: like ? "star.fill":"star")
                .font(.system(size: 30))
        }
        .foregroundColor(like ? .yellow : .gray)
    }
}

#Preview {
    StateExample2(like: .constant(false))
}
