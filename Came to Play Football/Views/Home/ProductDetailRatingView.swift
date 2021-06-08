import SwiftUI

struct ProductDetailRatingView: View {
    var body: some View {
        HStack (alignment: .top, spacing: 3) {
            VStack (alignment: .leading, spacing: 3) {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(grayColor)
                
                HStack (alignment: .center, spacing: 3) {
                    ForEach(0 ..< 5) { item in
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "star.fill")
                                .renderingMode(.template)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(grayColor.cornerRadius(5.0))
                                .foregroundColor(.white)
                        })
                    } // ForEach
                } // HStack
            } // VStack
        } // HStack
    }
}

struct ProductDetailRatingView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailRatingView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
