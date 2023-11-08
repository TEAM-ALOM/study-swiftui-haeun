import SwiftUI

struct ContentView: View {
    var seller: Seller
    @State private var offsetY: CGFloat = CGFloat.zero

    var body: some View {
        ZStack {
            VStack {
                ScrollView {
                    VStack{
                        GeometryReader { geometry in
                            let offset = geometry.frame(in: .global).minY

                            ImageScrollView(seller: Seller())
                                .frame(height: UIScreen.main.bounds.height * 0.5 + (offset > 0 ? offset : 0))
                                .offset(y: (offset > 0 ? -offset : 0))
                            
                        }.frame(minHeight: UIScreen.main.bounds.height * 0.5)
                        
                        SellingView(seller: Seller())
                        
                        Divider()
                        
                    }
                }.ignoresSafeArea()
                
                BottomNav(seller: Seller())
            }
            .ignoresSafeArea(edges: .bottom)
            
            VStack{
                NavigationView()
                Spacer()
            } .ignoresSafeArea(edges: .bottom)
        }
        
    }
}

#Preview {
    ContentView(seller: Seller())
}
