//
//  RecommendView.swift
//  DaangnClone
//
//  Created by 최하은 on 2023/11/08.
//

import SwiftUI

struct RecommendView: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    var body: some View {
        VStack(alignment: .leading){
            Divider()
            Text("이 글과 함께 봤어요")
                .bold()
                .padding(.vertical)
            
            LazyVGrid(columns: columns){
                ForEach((0...4), id: \.self) { idx in
                    ItemView(recommend: Recommend(), idx: idx)
                        .padding(.bottom)
                }
            }
            
        }
        .padding([.leading, .bottom, .trailing])
        
    }
}

#Preview {
    RecommendView()
}
