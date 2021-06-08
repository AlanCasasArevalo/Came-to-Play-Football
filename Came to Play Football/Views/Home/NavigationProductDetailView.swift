import SwiftUI

struct NavigationProductDetailView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })

            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })

        }
    }
}

struct NavigationProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationProductDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
