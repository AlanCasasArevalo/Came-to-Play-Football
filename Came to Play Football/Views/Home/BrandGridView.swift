import SwiftUI

struct BrandGridView: View {
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: 15, content: {
                ForEach(getBrands()) { brand in
                    BrandIdemView(brand: brand)
                } // ForEach
            }) // LazyHGrid
            .frame(height: 200)
            .padding(15)
//            .padding(.vertical, 10)
        } // ScrollView

    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
