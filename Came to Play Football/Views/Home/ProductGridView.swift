import SwiftUI

struct ProductGridView: View {
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15, content: {
            ForEach(getProducts()) { product in
                ProductItemView(product: product)
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
