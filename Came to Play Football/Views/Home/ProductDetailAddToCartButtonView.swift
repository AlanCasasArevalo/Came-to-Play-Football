import SwiftUI

struct ProductDetailAddToCartButtonView: View {
    
    let backgroundColor: Color
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding()
        .background(backgroundColor.cornerRadius(UIScreen.main.bounds.height/2))
        .clipShape(Capsule())

    }
}

struct ProductDetailAddToCartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailAddToCartButtonView(backgroundColor: Color.init(red: getProducts()[0].red, green: getProducts()[0].green, blue: getProducts()[0].blue))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
