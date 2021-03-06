import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shopViewModel: ShopViewModel
    
    var body: some View {
        ZStack {
            if !shopViewModel.isShowingProduct && shopViewModel.productSelected == nil {
                VStack (spacing: 0) {
                    NavigationCustomView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            CoverImageView()
                                .frame(minHeight: 250)
                                .padding(.vertical, 40)

                            CategoryGridView()

                            TitleView(title: "Helmets")

                            ProductGridView()
                                .padding(15)

                            BrandGridView()
                                .padding(15)

                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                    }) //: SCROLL
                    
                } // VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } // ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
                .environmentObject(ShopViewModel())
        }
    }
}
