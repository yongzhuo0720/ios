import SwiftUI

struct ContentView: View {
    var body: some View {
        MyGradient()
    }
}

struct MyGradient: View {
    var body: some View {
        VStack(spacing: 8) {
            RoundedRectangle(cornerRadius: 25)
                .fill(LinearGradient(
                    gradient: Gradient(colors: [.red, .blue, .yellow, .green]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
                .frame(width: 300, height: 200)

            RoundedRectangle(cornerRadius: 25)
                .fill(RadialGradient(
                    gradient: Gradient(colors: [.red, .green, .yellow]),
                    center: .top,
                    startRadius: 0,
                    endRadius: 150
                ))
                .frame(width: 300, height: 200)

            RoundedRectangle(cornerRadius: 25)
                .fill(AngularGradient(
                    gradient: Gradient(colors: [.yellow, .green, .blue, .yellow]),
                    center: .center,
                    angle: .degrees(-90)
                ))
                .frame(width: 300, height: 200)
        }
    }
}

#Preview {
    ContentView()
}
