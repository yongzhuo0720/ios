import SwiftUI

///姓名:卓永 学号:2315302858

struct ContentView: View {
    var body: some View {
        MySlider()
    }
}

struct MySlider: View {
    @State private var value1: Double = 6.0
    @State private var value2: CGFloat = 120.0
    @State private var value3 = false

    private func increase(n: CGFloat) {
        withAnimation(.easeInOut) {
            if value3 {
                value2 = min(max(value2 + n, 40), 300)
            }
        }
    }

    var body: some View {
        VStack(spacing: 28) {
            Text("当前 value1:\(value1, specifier: "%.6f")")

            Slider(value: $value1, in: 0...10)
                .accessibilityLabel("value1")

            Stepper("Stepper1:\(value1, specifier: "%.6f")", value: $value1, in: 0...10)

            Stepper {
                Text("Stepper2:\(Double(value2), specifier: "%.6f")")
            } onIncrement: {
                increase(n: 10)
            } onDecrement: {
                increase(n: -10)
            }

            Toggle("是否可控", isOn: $value3)

            RoundedRectangle(cornerRadius: 25)
                .fill(.orange)
                .frame(width: value2, height: 80)
        }
        .tint(.green)
        .padding(32)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
