

import 'package:flutter/material.dart';
//agent_pageに書いてある

class SovaPage extends StatelessWidget {
  const SovaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: const Color(0xFFff4655),title: const Text('Sova')),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/MainPage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(),
      ),
    );
  }
}
