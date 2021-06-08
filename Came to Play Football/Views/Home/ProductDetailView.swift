import SwiftUI

struct ProductDetailView: View {
    
    var product: ProductItemModel
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            NavigationProductDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            ProductDetailHeaderView(title: product.name)
                .padding(.horizontal)

           TopProductDetailView(product: product)
            .padding(.horizontal)
            
            

            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.init(red: getProducts()[0].red, green:  getProducts()[0].green, blue:  getProducts()[0].blue))

    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: getProducts()[0])
            .edgesIgnoringSafeArea(.all)
            .background(Color.init(red: getProducts()[0].red, green:  getProducts()[0].green, blue:  getProducts()[0].blue))
    }
}
