import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack (spacing: 0) {
                NavigationCustomView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        CoverImageView()
                            .frame(minHeight: 250)
                            .padding(.vertical, 40)

                        CategoryGridView()
                        
                        ProductGridView()
                            .padding(15)

                        TitleView(title: "Helmets")

                        FooterView()
                            .padding(.horizontal)
                    } //: VSTACK
                }) //: SCROLL
                
            } // VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } // ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
        }
    }
}
