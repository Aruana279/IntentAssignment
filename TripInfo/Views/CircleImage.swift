import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .frame(maxWidth: 250,maxHeight: 250)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("almatyTVtower"))
    }
}
