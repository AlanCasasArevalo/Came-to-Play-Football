import SwiftUI

struct ProductDetailDescriptionView: View {
    
    var description: String
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            Text(description)
                .font(.system(.body, design: .rounded))
                .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
        })
        
    }
}

struct ProductDetailDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailDescriptionView(description: getProducts()[0].description)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
