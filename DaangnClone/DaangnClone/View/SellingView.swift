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
            ProfileView(seller: Seller())
                .padding(.bottom)
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
            
            HStack{
                Text("거래 희망 장소")
                    .bold()
                Spacer()
                Text(seller.region)
                Image(systemName: "chevron.right")
            }
            .padding(.top)
            
            MapView()
                .frame(height: 150)
                .cornerRadius(5)
            
            Text("관심 3 ･ 조회 90")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.vertical, 3.0)

            Text("이 게시글 신고하기")
                .font(.subheadline)
                .foregroundColor(.gray)
                .underline()

            
        }
        .padding()
        
    }
}

#Preview {
    SellingView(seller: Seller())
}
