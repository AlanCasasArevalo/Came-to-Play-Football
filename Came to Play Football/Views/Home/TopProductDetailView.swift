import SwiftUI

struct TopProductDetailView: View {
    
    @State private var isAnimating: Bool = false
    
    let product: ProductItemModel
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 6, content: {
            VStack (alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)

                Text(product.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)

            Spacer ()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)

        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
        
        
    }
}

struct ProductDetailPriceView_Previews: PreviewProvider {
    static var previews: some View {
        TopProductDetailView(product: getProducts()[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
