import SwiftUI

struct NavigationProductDetailView: View {
    
    @EnvironmentObject var shopViewModel: ShopViewModel

    var body: some View {
        HStack {
            Button(action: {
                shopViewModel.cleanProduct()
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
            .environmentObject(ShopViewModel())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
