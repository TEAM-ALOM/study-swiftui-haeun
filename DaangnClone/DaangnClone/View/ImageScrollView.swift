import SwiftUI

struct ImageScrollView: View {
    let seller: Seller

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(seller.images, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width)
                            .clipped()
                    }
                }
            }.onAppear {
                UIScrollView.appearance().isPagingEnabled = true
            }
        }
    }
}

#Preview {
        ImageScrollView(seller: Seller())
}
