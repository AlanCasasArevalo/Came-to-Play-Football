import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section (
                    header: SectionView(rotateClockwise: true),
                    footer: SectionView(rotateClockwise: false)
                ) {
                    ForEach(getCategories()) { category in
                        CategoryItemView(category: category)
                    }
                } // ForEach
            }) // LazyHGrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } // ScrollView
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
