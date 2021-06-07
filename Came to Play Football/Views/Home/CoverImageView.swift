import SwiftUI

struct CoverImageView: View {
  var body: some View {
    TabView {
      ForEach(getFootbalPlayers() ?? []) { image in
        CoverImageItemView(image: image.image)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      }
    } //: TAB
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

// MARK: - Previews
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
