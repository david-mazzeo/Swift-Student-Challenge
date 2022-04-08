import SwiftUI
import PlaygroundSupport

struct BouncingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to The Gravity Box!")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            Button("Enter...") {
                
            }
            .buttonStyle(BouncingButton())
            .shadow(radius: 10)
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())
