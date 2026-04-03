// Firebase 集成需 google-services / GoogleService-Info 等配置；此处为可运行占位说明界面
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Firebase Demo')),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              '接入步骤概览：\n'
              '1) flutterfire configure 生成 FirebaseOptions\n'
              '2) 依赖 firebase_core，在 main 中 Firebase.initializeApp\n'
              '3) Android 放置 google-services.json；iOS 放置 GoogleService-Info.plist\n'
              '详见：https://firebase.google.com/docs/flutter/setup',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
