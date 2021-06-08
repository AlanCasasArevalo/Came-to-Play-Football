import SwiftUI

struct ProductDetailFavouriteButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Image(systemName: "heart.circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
        })
    }
}

struct ProductDetailFavouriteButton_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailFavouriteButton()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
