# Flutter Firebase 占位说明 Demo

## 简介

**不接真实 Firebase 项目**，只在界面用中文列出典型集成步骤（`flutterfire configure`、`firebase_core` 初始化、`google-services.json` / `GoogleService-Info.plist` 等）。保证「克隆即运行」，同时给后续接入指方向。

## 快速开始

### 环境要求

Flutter SDK。

### 运行

```bash
flutter pub get
flutter run
```

## 概念讲解

### 第一部分：为什么 Demo 不直接初始化

`Firebase.initializeApp` 在没有 `FirebaseOptions`/配置文件时会抛错。教学仓库若硬编码密钥既不安全也难维护，故采用「纯 UI 说明」。

### 第二部分：真实接入时的主线

创建 Firebase 项目 → FlutterFire CLI 生成 `firebase_options.dart` → Android Gradle 引入 Google 服务插件 → iOS 下载 plist → Dart 侧 `initializeApp`。具体分析数据库、登录、消息等再拆模块。

## 完整示例

界面文案见 `lib/main.dart` 中 `Text` 多行字符串；无网络调用。

## 注意事项

- 切勿把私钥、服务器密钥提交进公开仓库。
- 各环境（dev/staging/prod）应有各自 Firebase 项目或至少区分配置。

## 完整讲解（中文）

Firebase 集成烦在**配置「环绕工程」的文件**，而不是某一个 Dart 函数。这个 Demo 的价值是：让同事打开 App 就能看到一张「核对清单」，避免漏掉 `google-services`、iOS URL Scheme 或 Gradle 插件版本之类的小坑。真正连上以后，把本页的说明替换成你们内部的 WIKI 链接即可。
