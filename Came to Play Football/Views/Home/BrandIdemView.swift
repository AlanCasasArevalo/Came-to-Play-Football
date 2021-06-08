import SwiftUI

struct BrandIdemView: View {
    
    let brand: BrandModel
    
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}

// MARK: - Previews
struct BrandIdemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandIdemView(brand: getBrands()[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.black)
    }
}
