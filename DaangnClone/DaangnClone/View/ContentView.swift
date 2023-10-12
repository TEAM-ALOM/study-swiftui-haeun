//
//  ContentView.swift
//  DaangnClone
//
//  Created by 최하은 on 2023/10/08.
//

import SwiftUI
//주석
struct ContentView: View {
    var seller: Seller
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack{
                    ImageScrollView(seller: Seller())
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                    ProfileView(seller: Seller())
                    SellingView(seller: Seller())
                    
                    HStack{
                        Text("거래 희망 장소")
                            .bold()
                        Spacer()
                        Text(seller.region)
                        Image(systemName: "chevron.right")
                    }
                    .padding(.top)
                    .padding(.horizontal)
                    
                    MapView()
                        .frame(height: 150)
                        .padding()
                        .cornerRadius(60)
                    
                }
            }.ignoresSafeArea()
                
            
            VStack{
                NavigationView()
                Spacer()
                BottomNav(seller: Seller())
            } .ignoresSafeArea(edges: .bottom)
        }
        
    }
}

#Preview {
    ContentView(seller: Seller())
}
