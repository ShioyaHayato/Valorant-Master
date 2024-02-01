import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  const OutputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('記録表示画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}
