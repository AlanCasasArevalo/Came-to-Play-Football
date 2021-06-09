import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shopViewModel: ShopViewModel
    
    var body: some View {
        
        VStack (alignment: .leading) {
            VStack {
                
                NavigationProductDetailView()
                    .padding(.horizontal)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                ProductDetailHeaderView(title: shopViewModel.productSelected?.name ?? "")
                    .padding(.horizontal)
                
                TopProductDetailView(product: shopViewModel.productSelected ?? getProducts()[0])
                    .padding(.horizontal)
            }
            .zIndex(1)
            
            VStack (alignment: .leading) {
                
                 // Rate and size
                 HStack{
                    ProductDetailRatingView()
                    Spacer()
                    ProductDetailSizeView()
                 }
                 .padding(.horizontal)
                 .padding(.top, -20)
                 .padding(.bottom, 10)

                // Description
                ProductDetailDescriptionView(description: shopViewModel.productSelected?.description ?? "")
                    .padding(.all)
                
                HStack{
                    
                    // Counter
                    ProductDetailCounterView()
                        .frame(width: 120)
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    // Favourite
                    ProductDetailFavouriteButton()
                        .frame(width: 30, height: 30, alignment: .center)
                        .padding(.trailing)
                }
                
                // Add to cart
                ProductDetailAddToCartButtonView(backgroundColor: Color.init(red: shopViewModel.productSelected?.red ?? 0, green: shopViewModel.productSelected?.green ?? 0, blue: shopViewModel.productSelected?.blue ?? 0))
                    .padding(.vertical, 10)
                    .padding(.horizontal)

            } // VStack
            .background(
                Color.white
                    .clipShape(CustomShapeView())
                    .padding(.top, -120)
            )
        } // VStack
        .zIndex(0)
        .background(Color.init(red: shopViewModel.productSelected?.red ?? 0, green: shopViewModel.productSelected?.green ?? 0, blue: shopViewModel.productSelected?.blue ?? 0))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(ShopViewModel())
            .edgesIgnoringSafeArea(.all)
    }
}
