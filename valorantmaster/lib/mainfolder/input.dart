import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('入力表示画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
