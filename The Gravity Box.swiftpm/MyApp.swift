import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct AppController: UIViewControllerRepresentable {
    var restrictRotation: UIInterfaceOrientationMask = .portrait
    
    func makeUIViewController(context: Context) -> UIViewController {
        return WelcomeController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
}

struct ContentView: View {
    var body: some View {
        AppController()
            .background(Color.black)
    }
}
