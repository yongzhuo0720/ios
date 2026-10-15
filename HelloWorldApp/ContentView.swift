import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 8) {
                Circle()
                    .stroke(Color.red)
                    .frame(width: 150, height: 150)

                Ellipse()
                    .trim(from: 0.2, to: 1.0)
                    .stroke(Color.blue, lineWidth: 30)
                    .frame(width: 250, height: 150)

                Capsule()
                    .stroke(.red, style: StrokeStyle(
                        lineWidth: 30,
                        lineCap: .round,
                        dash: [30]
                    ))
                    .frame(width: 250, height: 150)

                Rectangle()
                    .fill(.yellow)
                    .frame(width: 250, height: 150)

                RoundedRectangle(cornerRadius: 20)
                    .fill(.green)
                    .frame(width: 250, height: 150)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    ContentView()
}
