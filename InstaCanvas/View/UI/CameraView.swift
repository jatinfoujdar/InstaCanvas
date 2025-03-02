import SwiftUI
import AVFoundation

struct CameraView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        VStack{
            
            image?.resizable()
                .scaledToFit()
            
            Button("Open Camera"){
                showImagePicker = true
            }.padding()
                .background(.green)
                .foregroundStyle(.white)
                .cornerRadius(10)
        }.sheet(isPresented: self.$showImagePicker){
            CaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}

#Preview {
    CameraView()
        .preferredColorScheme(.dark)
}
