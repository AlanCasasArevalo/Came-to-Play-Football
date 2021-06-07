import SwiftUI

struct CoverImageItemView: View {
    
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct CoverImageItemView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageItemView(image: getFootbalPlayers()[0].image)
    }
}
