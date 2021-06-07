import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack (spacing: 0) {
                NavigationCustomView()
                    .padding(.bottom)
                    .padding(.horizontal, 16)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)

                Spacer()
                
                FooterView()
                    .padding(.vertical)
            }
            .background(colorBackground.edgesIgnoringSafeArea(.all))
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewDevice("iPhone 11")
        }
    }
}
