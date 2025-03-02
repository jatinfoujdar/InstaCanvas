import SwiftUI

struct CaptureView: View {
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    
    var body: some View {
        ImagePicker(isShown: $showImagePicker, image: $image)
    }
}

#Preview {
    CaptureView(showImagePicker: .constant(false), image: .constant(Image("")))
}
