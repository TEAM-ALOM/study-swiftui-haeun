//
//  ItemView.swift
//  DaangnClone
//
//  Created by 최하은 on 2023/11/08.
//

import SwiftUI

struct ItemView: View {
    var recommend: Recommend
    var idx: Int
    var body: some View {
        VStack(alignment: .leading) {
            
            Image(recommend.images[idx])
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 170, height: 130)
                .clipped()
                .cornerRadius(5)
            
            Text(recommend.title[idx])
            Text(recommend.price[idx])
                .fontWeight(.bold)
        }
        
    }
}

#Preview {
    ItemView(recommend: Recommend(), idx: 1)
}
