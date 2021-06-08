import SwiftUI

struct ProductDetailHeaderView: View {
    
    let title: String
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            Text("Productive Gear")

            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .foregroundColor(.white)

    }
}

struct ProductDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailHeaderView(title: getProducts()[0].name)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.black)
        
    }
}
