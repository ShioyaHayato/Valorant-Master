import 'package:flutter/material.dart';
//agent_pageに書いてある

class WeponPage extends StatelessWidget {
  const WeponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.red[900], title: const Text('Wepons')),
      body: const Center(),
    );
  }
}
