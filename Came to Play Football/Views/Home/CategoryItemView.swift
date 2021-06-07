import SwiftUI

struct CategoryItemView: View {
    
    let category: CategoryModel
    
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Spacer()
            } // Hstack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth:  1)
            )

        }) // Button
        
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: getCategories()[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
