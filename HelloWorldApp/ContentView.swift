import SwiftUI

struct ContentView: View {
    @State private var username = "卓永"
    @State private var password = ""
    @State private var message = ""

    var body: some View {
        VStack(spacing: 28) {
            HStack {
                Text("用户名：")
                TextField("请输入用户名", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 220)
            }

            HStack {
                Text("密码：")
                SecureField("请输入密码", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 220)
            }

            Button("登录") {
                if username.isEmpty || password.isEmpty {
                    message = "请输入用户名和密码！！"
                } else {
                    message = "用户名为\(username)，密码已输入"
                }
            }
            .buttonStyle(.borderedProminent)

            if !message.isEmpty {
                Text(message)
                    .foregroundStyle(.secondary)
            }
        }
        .font(.system(size: 24))
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding(40)
    }
}

#Preview {
    ContentView()
}
