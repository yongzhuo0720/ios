import SwiftUI

///姓名:卓永 学号:2315302858

struct ContentView: View {
    var body: some View {
        MyDatePicker()
    }
}

struct MyDatePicker: View {
    @State private var selectedDate = Date()
    @State private var bkColor: Color = .green

    private let start = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    private let end = Date()

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                DatePicker(
                    "请选择日期：",
                    selection: $selectedDate,
                    in: start...end,
                    displayedComponents: .date
                )
                .datePickerStyle(.graphical)
                .tint(bkColor)

                ColorPicker("请选择颜色：", selection: $bkColor)

                RoundedRectangle(cornerRadius: 25)
                    .fill(bkColor)
                    .frame(maxWidth: 300)
                    .frame(height: 200)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
