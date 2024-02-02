import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/MainPage.png'),
            fit: BoxFit.cover, // 画像を全体に引き伸ばす
          ),
        ),
      ), // Textウィジェットを削除
    );
  }
}
