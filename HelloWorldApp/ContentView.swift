import SwiftUI

///姓名:卓永 学号:2315302858

struct ContentView: View {
    var body: some View {
        MyButton()
    }
}

struct MyButton: View {
    @State private var title = "hello iOS"
    @State private var likes = 5

    var body: some View {
        VStack(spacing: 30) {
            Text(title)
                .font(.title)
                .bold()
                .padding(.bottom, 8)

            Button("按钮1") {
                title = "按钮1被按下"
            }
            .font(.headline)
            .tint(.brown)

            Button {
                title = "按钮2被按下"
            } label: {
                HStack {
                Image(systemName: "pencil")
                        .foregroundStyle(.brown)
                    Text("按钮2")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .background(.blue, in: RoundedRectangle(cornerRadius: 12))
                }
            }

            VStack(spacing: 4) {
                Link("打开百度", destination: URL(string: "https://www.baidu.com")!)
                    .font(.headline)
                    .foregroundStyle(.brown)

                Button {
                    likes += 1
                } label: {
                    Image(systemName: "heart.fill")
                        .font(.system(size: 44))
                        .foregroundStyle(.white)
                        .frame(width: 100, height: 100)
                        .background(
                            LinearGradient(colors: [.red, .blue], startPoint: .topLeading, endPoint: .bottomTrailing),
                            in: Circle()
                        )
                        .overlay(alignment: .bottomTrailing) {
                            Text("\(likes)")
                                .font(.caption)
                                .foregroundStyle(.white)
                                .padding(22)
                        }
                        .shadow(color: .black.opacity(0.6), radius: 10)
                }
                .accessibilityLabel("点赞")
                .accessibilityValue("\(likes)")
            }
            Spacer()
        }
        .padding(.top, 30)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
