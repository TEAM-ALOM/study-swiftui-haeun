//
//  StateExample.swift
//  StateExample
//
//  Created by 최하은 on 2023/11/01.
//

import SwiftUI

struct StateExample: View {
    @Binding var like: Bool
    
    var body: some View {
        Button{
            like.toggle()
        } label: {
            Label("like", systemImage: like ? "heart.fill":"heart")
                .font(.system(size: 30))
        }
        .foregroundColor(like ? .red : .gray)
    }
}

#Preview {
    StateExample(like: .constant(false))
}
