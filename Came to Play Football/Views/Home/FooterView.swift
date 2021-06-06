import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            Text(ConstantWords.footerText)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image(ImagesAndIconsConstant.logoLineal)
                .renderingMode(.template)
                .layoutPriority(0)

            Text(ConstantWords.copyright)
                .font(.footnote)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .layoutPriority(1)

        }
        .padding()
        .foregroundColor(.gray)

    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(grayColor)
    }
}
