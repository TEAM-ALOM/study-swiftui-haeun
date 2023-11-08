//
//  ProfileView.swift
//  DaangnClone
//
//  Created by 최하은 on 2023/10/11.
//

import SwiftUI

struct ProfileView: View {
    var seller: Seller
    
    var body: some View {
        HStack{
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .foregroundColor(Color.gray)
                .frame(width: 40, height: 40)
            VStack(alignment: .leading) {
                Text(seller.name)
                    .fontWeight(.heavy)
                Text(seller.location)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                HStack {
                    VStack {
                        Text("\(String(seller.temperature))℃")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.green)
                        
                    }
                    Text("😀")
                        .font(.system(size: 28))
                }
                Text("매너온도")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                    .underline()
            }
            
            
        }
    }
}

#Preview {
    ProfileView(seller: Seller())
}
