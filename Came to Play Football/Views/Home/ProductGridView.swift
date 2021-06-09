import SwiftUI

struct ProductGridView: View {
    
    @EnvironmentObject var shopViewModel: ShopViewModel
    
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15, content: {
            ForEach(getProducts()) { product in
                ProductItemView(product: product)
                    .onTapGesture {
                        feedback.impactOccurred()
                        shopViewModel.isShowingProduct = true
                        shopViewModel.productSelected = product
                    }
            } // ForEach
        }) //LazyVGrid
    }
}

struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
