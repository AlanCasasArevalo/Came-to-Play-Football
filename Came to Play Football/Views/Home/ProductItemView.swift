import SwiftUI

struct ProductItemView: View {
    
    var product: ProductItemModel
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color.init(
                            red: product.red,
                            green: product.green,
                            blue: product.blue))
            .cornerRadius(16)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        } // VStack
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: getProducts()[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
