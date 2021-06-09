import SwiftUI

struct ProductDetailCounterView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
       
        HStack{
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Spacer()

            Text("\(counter)")
                .fontWeight(.semibold)

            Spacer()

            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)

    }
}

struct ProductDetailCounterView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailCounterView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
