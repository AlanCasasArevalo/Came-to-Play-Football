import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack{
            TextLogoView(title: ConstantWords.logoViewTitleTouch)
            
            Image(ImagesAndIconsConstant.logoDark)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            TextLogoView(title: ConstantWords.logoViewTitleDown)
        }
    }
}

struct TextLogoView: View {
    
    let title: String
    
    var body: some View {
        if #available(iOS 14.0, *) {
            Text(title)
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        } else {
            // Fallback on earlier versions
            Text(title)
                .font(.system(size: 20, weight: .black, design: .rounded))
        }
    }
}


struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
