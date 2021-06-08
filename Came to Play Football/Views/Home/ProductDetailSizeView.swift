import SwiftUI

struct ProductDetailSizeView: View {
    
    let sizes = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        VStack (alignment: .trailing, spacing: 5) {
            Text("Size")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(grayColor)
            
            HStack (alignment: .center, spacing: 5) {
                ForEach(sizes, id: \.self) { size in
                    Button(action: {
                        
                    }, label: {
                        Text(size)
                            .foregroundColor(grayColor)
                            .font(.footnote)
                            .fontWeight(.bold)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(Color.white.cornerRadius(5))
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.gray, lineWidth:  2)
                            )
                    })
                } // ForEach
            } // HStack
        } // VStack
    }
}

struct ProductDetailSizeView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailSizeView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
