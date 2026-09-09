# HelloWorldApp

一个最小的 SwiftUI iOS 示例项目，适合直接放到 GitHub 上使用 Actions 编译。

## 本地打开

使用 Xcode 打开 `HelloWorldApp.xcodeproj`，选择 iOS Simulator 后运行。

## GitHub Actions

推送到 `main` 分支或创建 Pull Request 后，`.github/workflows/build.yml` 会在 `macos-latest` runner 上执行无签名模拟器构建，启动 App 并将运行截图上传为 `ios-preview` Artifact。工作流完成后，在 Actions 运行详情页底部的 Artifacts 区域下载预览图。
