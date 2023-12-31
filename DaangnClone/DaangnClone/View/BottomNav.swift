//
//  BottomNav.swift
//  DaangnClone
//
//  Created by 최하은 on 2023/10/11.
//

import SwiftUI

struct BottomNav: View {
    var seller: Seller
    
    var body: some View {
        VStack{
            Divider()
            
            HStack {
                Image(systemName: "heart")
                
                VStack(alignment: .leading){
                    Text(seller.price)
                        .fontWeight(.heavy)
                    Text("가격 제안 불가")
                        .font(.subheadline)
                }
                .padding()
                
                Spacer()
                
                Button("채팅하기"){}
                    .frame(height: 8.0)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.daangn))
                    .cornerRadius(6.0)
            }
            
        }
        .padding(.horizontal)
        .padding(.bottom)
        .background(Color.white)
        
    }
}

#Preview {
    BottomNav(seller: Seller())
}
