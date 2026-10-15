import SwiftUI

struct ContentView: View {
    var body: some View {
        MyColor()
    }
}

struct MyColor: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.mint)
            .frame(width: 300, height: 200)
            .shadow(color: .red, radius: 20, x: -20, y: -20)
    }
}

#Preview {
    ContentView()
}
