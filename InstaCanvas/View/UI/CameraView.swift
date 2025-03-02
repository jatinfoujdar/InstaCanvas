import SwiftUI
import AVFoundation

struct CameraView: View {
    var body: some View {
        VStack{
            Button("Open Camera"){
                
            }.padding()
                .background(.green)
                .foregroundStyle(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    CameraView()
        .preferredColorScheme(.dark)
}
