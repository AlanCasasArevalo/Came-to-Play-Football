import SwiftUI

struct ProductDetailView: View {
    
    var product: ProductItemModel
    
    var body: some View {
        
        VStack (alignment: .leading) {
            VStack {
                
                NavigationProductDetailView()
                    .padding(.horizontal)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                ProductDetailHeaderView(title: product.name)
                    .padding(.horizontal)
                
                TopProductDetailView(product: product)
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
                ProductDetailDescriptionView(description: product.description)
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
                ProductDetailAddToCartButtonView(backgroundColor: Color.init(red: product.red, green: product.green, blue: product.blue))
                    .padding(.vertical, 10)
                    .padding(.horizontal)

            } // VStack
            .background(
                Color.white
                    .clipShape(CustomShapeView())
                    .padding(.top, -120)
            )
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            Spacer()
        } // VStack
        .zIndex(0)
        .edgesIgnoringSafeArea(.all)
        .background(Color.init(red: getProducts()[0].red, green:  getProducts()[0].green, blue:  getProducts()[0].blue))
        
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: getProducts()[0])
            .edgesIgnoringSafeArea(.all)
    }
}
