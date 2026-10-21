import SwiftUI

///姓名:卓永 学号:2315302858

struct ContentView: View {
    var body: some View {
        MyImage()
    }
}

struct MyImage: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(systemName: "pencil")
                    .font(.largeTitle)

                Image("cat")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)

                Image("ICON")
                    .renderingMode(.template)
                    .foregroundStyle(.blue)
                    .clipShape(Circle())

                AsyncImage(url: URL(string: "https://picsum.photos/id/237/300/200")) { phase in
                    switch phase {
                    case .success(let image):
                        image.resizable().scaledToFill()
                    case .failure:
                        Image(systemName: "photo")
                            .font(.largeTitle)
                            .foregroundStyle(.secondary)
                    case .empty:
                        ProgressView()
                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
        }
    }
}

#Preview {
    ContentView()
}
