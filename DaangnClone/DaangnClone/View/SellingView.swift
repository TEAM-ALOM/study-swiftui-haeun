//
//  SellingView.swift
//  DaangnClone
//
//  Created by 최하은 on 2023/10/11.
//

import SwiftUI

struct SellingView: View {
    var seller: Seller
    var body: some View {
        VStack(alignment: .leading) {
            Text(seller.title)
                .font(.title3)
                .bold()
            
            HStack {
                Text("디지털기기")
                    .underline()
                Text("∙ 1시간 전")
                Spacer()
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            
            Text(seller.description)
                .padding(.top, 10)
            
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    SellingView(seller: Seller())
}
